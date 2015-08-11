-- common grenade projectile code

AddCSLuaFile()

ENT.Type = "anim"
ENT.Model = Model("models/weapons/w_eq_flashbang_thrown.mdl")


AccessorFunc( ENT, "thrower", "Thrower")

function ENT:SetupDataTables()
   self:NetworkVar("Float", 0, "ExplodeTime")
end

function ENT:Initialize()
   self:SetModel(self.Model)

   if SERVER then self:PhysicsInitSphere(1.5,"grenade") end

   self:SetMoveType(MOVETYPE_VPHYSICS)
   self:SetSolid(SOLID_BBOX)
   self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)

   --self:GetPhysicsObject():SetMass( 1 )

   if SERVER then
      self:SetExplodeTime(0)
   end
end


function ENT:SetDetonateTimer(length)
   self:SetDetonateExact( CurTime() + length )
end

function ENT:SetDetonateExact(t)
   self:SetExplodeTime(t or CurTime())
end

-- override to describe what happens when the nade explodes
function ENT:Explode(tr)
   ErrorNoHalt("ERROR: BaseGrenadeProjectile explosion code not overridden!\n")
end

function ENT:ReflectVector( dir, norm )
   local normal = norm:GetNormalized()
   local dot = dir:DotProduct( normal )
   return dir - 2*dot*normal
end

function ENT:PhysicsCollide(data,phys)
   local reflectionDir = self:ReflectVector( data.OurOldVelocity, data.HitNormal )
   local efficiency = 0.55
   phys:SetVelocityInstantaneous( reflectionDir*efficiency )
   if data.Speed > 50 then
         self.Entity:EmitSound(Sound("weapons/flashbang/grenade_hit1.wav"))
   end 
end

function ENT:Think()

   if SERVER then
      self:GetPhysicsObject():AddAngleVelocity( -0.99 * self:GetPhysicsObject():GetAngleVelocity() )
   end

   local etime = self:GetExplodeTime() or 0
   if etime != 0 and etime < CurTime() then
      -- if thrower disconnects before grenade explodes, just don't explode
      if SERVER and (not IsValid(self:GetThrower())) then
         self:Remove()
         etime = 0
         return
      end

      -- find the ground if it's near and pass it to the explosion
      local spos = self:GetPos()
      local tr = util.TraceLine({start=spos, endpos=spos + Vector(0,0,-32), mask=MASK_SHOT_HULL, filter=self.thrower})

      local success, err = pcall(self.Explode, self, tr)
      if not success then
         -- prevent effect spam on Lua error
         self:Remove()
         ErrorNoHalt("ERROR CAUGHT: ttt_basegrenade_proj: " .. err .. "\n")
      end
   end
end
