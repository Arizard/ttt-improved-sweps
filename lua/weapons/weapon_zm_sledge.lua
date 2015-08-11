if ( CLIENT ) then

	SWEP.PrintName			= "H.U.G.E-249"			
	SWEP.Author				= "Arizard"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 0
	SWEP.IconLetter			= "b"
		
end

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_ari_ttt_base"
SWEP.Category			= "Arizard Realistic CS"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.Sound			= Sound("Weapon_m249.Single")
SWEP.ViewModel			= "models/weapons/cstrike/c_mach_m249para.mdl"
SWEP.WorldModel			= "models/weapons/w_mach_m249para.mdl"

SWEP.ViewModelFOV = 50


SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Recoil			= 3.2
SWEP.Primary.Damage			= 7
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.09
SWEP.Primary.ClipSize		= 150
SWEP.Primary.Delay			= 0.06
SWEP.Primary.DefaultClip	= 150
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "AirboatGun"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos 		= Vector( -5.95, -7, 2.3 )
SWEP.IronSightsAng 		= Vector( 0, 0.05, 0 )

SWEP.MovementPenalty = 1.5

-- TTT stuff here
SWEP.Kind = WEAPON_HEAVY
SWEP.AllowDrop = true
SWEP.IsSilent = false
SWEP.NoSights = true
SWEP.AutoSpawnable = true
SWEP.Primary.ClipMax = 150