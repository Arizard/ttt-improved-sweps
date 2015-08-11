if ( CLIENT ) then

	SWEP.PrintName			= "Shotgun"			
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

SWEP.ViewModel			= "models/weapons/cstrike/c_shot_xm1014.mdl"
SWEP.WorldModel			= "models/weapons/w_shot_xm1014.mdl"
SWEP.Primary.Sound			= Sound( "Weapon_XM1014.Single" )

SWEP.ViewModelFOV = 50


SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Recoil			= 7
SWEP.Primary.Damage			= 11
SWEP.Primary.NumShots		= 8
SWEP.Primary.Cone			= 0.085
SWEP.Primary.ClipSize		= 8
SWEP.Primary.Delay			= 0.7
SWEP.Primary.DefaultClip	= 8
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "Buckshot"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos 		= Vector( -6.89, -9, 2.65 )
SWEP.IronSightsAng 		= Vector( -0.2, -0.82, 0 )

SWEP.Shotgun = true

SWEP.MovementPenalty = 0.6

-- TTT stuff here
SWEP.Kind = WEAPON_HEAVY
SWEP.AmmoEnt = "item_box_buckshot_ttt"
SWEP.AllowDrop = true
SWEP.IsSilent = false
SWEP.NoSights = true
SWEP.AutoSpawnable = true
SWEP.Primary.ClipMax = 24

