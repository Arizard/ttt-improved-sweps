if ( CLIENT ) then

	SWEP.PrintName			= "Rifle"			
	SWEP.Author				= "Arizard"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 0
	SWEP.IconLetter			= "n"
	
	
end

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_ari_ttt_base"
SWEP.Category			= "Arizard Realistic CS"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.ViewModel			= "models/weapons/cstrike/c_snip_scout.mdl"
SWEP.WorldModel			= "models/weapons/w_snip_scout.mdl"

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound( "Weapon_scout.Single" )
SWEP.Primary.Recoil			= 4
SWEP.Primary.Damage			= 50
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.0005
SWEP.Primary.ClipSize		= 10
SWEP.Primary.Delay			= 1.56
SWEP.Primary.DefaultClip	= 10
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos 		= Vector( -6.1, -7, 2.5 )
SWEP.IronSightsAng 		= Vector( 2.8, 0, 0 )

SWEP.Scope = true
SWEP.ScopedFOV = 25

function SWEP:PrimaryAttack2() -- secondary primary attack so we don't override the default base one
	timer.Simple( self.Primary.Delay*0.9, function() 
			if self.Weapon then
				self.Weapon:SendWeaponAnim( ACT_VM_IDLE )
			end
		end )
	if self:GetIronsights() then
		timer.Simple(self.Primary.Delay/1.5, function()
			if IsValid(self) then
				self:SetIronsights( true, true )
			end
		end)
	end
	self:SetIronsights( false, true )
end

SWEP.MovementPenalty = 0.8

-- TTT stuff here
SWEP.Kind = WEAPON_HEAVY
SWEP.AmmoEnt = "item_ammo_357_ttt"
SWEP.AllowDrop = true
SWEP.IsSilent = false
SWEP.NoSights = true
SWEP.AutoSpawnable = true
SWEP.Primary.ClipMax = 20
