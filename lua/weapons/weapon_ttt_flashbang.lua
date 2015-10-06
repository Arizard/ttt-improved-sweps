-----
if (SERVER) then
        SWEP.Weight                     = 5
        SWEP.AutoSwitchTo               = false
        SWEP.AutoSwitchFrom             = false
end

if (CLIENT) then

        SWEP.PrintName = "Flash Grenade"
        SWEP.Slot = 3
        SWEP.SlotPos = 0
        SWEP.DrawAmmo                   = false
        SWEP.DrawCrosshair              = false
        SWEP.ViewModelFOV                       = 65
        SWEP.ViewModelFlip              = false
        SWEP.CSMuzzleFlashes            = false

        SWEP.Icon = "vgui/ttt/icon_nades"
        SWEP.IconLetter = "h"
end

SWEP.WeaponID = AMMO_DISCOMB
SWEP.Kind = WEAPON_NADE

SWEP.CanBuy = {ROLE_TRAITOR, ROLE_DETECTIVE}

SWEP.Base                                       = "weapon_grenade_base"

SWEP.Author                             = "Arizard"
SWEP.Contact                            = ""
SWEP.Purpose                            = ""

SWEP.Spawnable = true
SWEP.AutoSpawnable      = false
SWEP.AdminSpawnable                     = true

SWEP.ViewModel                          = "models/weapons/cstrike/c_eq_flashbang.mdl"
SWEP.WorldModel                                 = "models/weapons/w_eq_flashbang.mdl"

SWEP.Primary.ClipSize                   = -1
SWEP.Primary.DefaultClip                = -1
SWEP.Primary.Automatic                  = true
SWEP.Primary.Ammo                       = "none"

SWEP.Secondary.ClipSize                 = -1
SWEP.Secondary.DefaultClip              = -1
SWEP.Secondary.Automatic                = true
SWEP.Secondary.Ammo                     = "none"

SWEP.NadeClass = "ent_flashgrenade"

function SWEP:IsEquipment( )
        return true
end