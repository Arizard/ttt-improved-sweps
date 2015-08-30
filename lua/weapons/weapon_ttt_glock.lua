if ( CLIENT ) then

	SWEP.PrintName			= "Glock-18"			
	SWEP.Author				= "Arizard"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 0
	SWEP.IconLetter			= "b"
	
	SWEP.Icon = "vgui/ttt/icon_glock"
end

SWEP.HoldType			= "pistol"
SWEP.Base				= "weapon_ari_ttt_base"
SWEP.Category			= "Arizard Realistic CS"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.ViewModel  = "models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

SWEP.Primary.Sound = Sound( "Weapon_Glock.Single" )

SWEP.ViewModelFOV = 50


SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Recoil			= 1.2
SWEP.Primary.Damage			= 12
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.02
SWEP.Primary.ClipSize		= 20
SWEP.Primary.Delay			= 0.1
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "Pistol"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IronSightsPos 		= Vector( -5.6, -10, 2.6 )
SWEP.IronSightsAng 		= Vector( 1.2, 0.5, 0 )

SWEP.MovementPenalty = 0.3

-- TTT stuff here
SWEP.Kind = WEAPON_PISTOL
SWEP.AmmoEnt = "item_ammo_pistol_ttt"
SWEP.AllowDrop = true
SWEP.IsSilent = false
SWEP.NoSights = true
SWEP.AutoSpawnable = true
SWEP.Primary.ClipMax = 60