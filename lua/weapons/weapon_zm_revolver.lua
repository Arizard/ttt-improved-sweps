if ( CLIENT ) then

	SWEP.PrintName			= "Deagle"			
	SWEP.Author				= "Arizard"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 0
	SWEP.IconLetter			= "b"
		
end

SWEP.HoldType			= "revolver"
SWEP.Base				= "weapon_ari_ttt_base"
SWEP.Category			= "Arizard Realistic CS"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.ViewModel			= "models/weapons/cstrike/c_pist_deagle.mdl"
SWEP.WorldModel			= "models/weapons/w_pist_deagle.mdl"

SWEP.Primary.Sound			= Sound( "Weapon_Deagle.Single" )

SWEP.ViewModelFOV = 50


SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Recoil			= 6.5
SWEP.Primary.Damage			= 37
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.0025
SWEP.Primary.ClipSize		= 8
SWEP.Primary.Delay			= 0.5
SWEP.Primary.DefaultClip	= 8
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "AlyxGun"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos 		= Vector( -6.35, -10, 1.4 )
SWEP.IronSightsAng 		= Vector( 2, -0.1, 0 )

SWEP.MovementPenalty = 0.8

-- TTT stuff here
SWEP.Kind = WEAPON_PISTOL
SWEP.AmmoEnt = "item_ammo_revolver_ttt"
SWEP.AllowDrop = true
SWEP.IsSilent = false
SWEP.NoSights = true
SWEP.AutoSpawnable = true
SWEP.Primary.ClipMax = 36