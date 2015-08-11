if ( CLIENT ) then

	SWEP.PrintName			= "Pistol"			
	SWEP.Author				= "Arizard"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 0
	SWEP.IconLetter			= "b"
	
	SWEP.Icon = "vgui/ttt/icon_pistol"
end

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_ari_ttt_base"
SWEP.Category			= "Arizard Realistic CS"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.ViewModel  = "models/weapons/cstrike/c_pist_fiveseven.mdl"
SWEP.WorldModel = "models/weapons/w_pist_fiveseven.mdl"

SWEP.Primary.Sound = Sound( "Weapon_FiveSeven.Single" )

SWEP.ViewModelFOV = 50


SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Recoil			= 1.5
SWEP.Primary.Damage			= 25
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.02
SWEP.Primary.ClipSize		= 20
SWEP.Primary.Delay			= 0.2
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "Pistol"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos 		= Vector( -5.89, -10, 2.45 )
SWEP.IronSightsAng 		= Vector( 1.2, 0, 0 )

SWEP.MovementPenalty = 0.1

-- TTT stuff here
SWEP.Kind = WEAPON_PISTOL
SWEP.AmmoEnt = "item_ammo_pistol_ttt"
SWEP.AllowDrop = true
SWEP.IsSilent = false
SWEP.NoSights = true
SWEP.AutoSpawnable = true
SWEP.Primary.ClipMax = 60
