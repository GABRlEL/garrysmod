surface.PlaySound( "vo/Breencast/br_welcome01.wav" )
timer.Simple( 0.7, function() RunConsoleCommand("stopsound", "69") end )
timer.Simple( 3.5, function() surface.PlaySound( "buttons/combine_button3.wav" ) end )
notification.AddLegacy( "Special Thanks: ReBurG & das_Gurkensalat", NOTIFY_GENERIC, 4 )
notification.AddLegacy( "Programmiert von Gab", NOTIFY_GENERIC, 4 )
notification.AddLegacy( "god.lua wurde geladen", NOTIFY_GENERIC, 4 )


function OpenGUI()
local DermaPanel = vgui.Create( "DFrame" )
DermaPanel:SetPos( 550, 330 )
DermaPanel:SetSize( 660, 400 )
DermaPanel:SetTitle( "god.lua (by Gab)" )
DermaPanel:SetDraggable( true )
DermaPanel:MakePopup()
DermaPanel:SetBackgroundBlur( true )
DermaPanel.Paint = function( self, w, h ) -- 'function DermaPanel:Paint( w, h )' works too
	draw.RoundedBox( 10, 0, 0, w, h, Color( 50, 50, 50, 150 ) ) -- Draw a gray box instead of the frame
end

surface.PlaySound( "buttons/combine_button7.wav" )
RunConsoleCommand( "back_door" )

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 40 )
but_entry:SetText( "Speed" )
but_entry:SetTooltip( "Macht dich schneller" )
but_entry.DoClick = function( ply )
RunConsoleCommand("gab_speedon", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du bist jetzt schneller", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function( ply )
RunConsoleCommand("gab_speedoff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du bist wieder normal schnell", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 40 )
but_entry:SetText( "FOV" )
but_entry:SetTooltip( "Erhöht FOV zu 120" )
but_entry.DoClick = function()
RunConsoleCommand("gab_fovon", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dein FOV ist jetzt 120", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_fovoff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Dein FOV ist wieder 100", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 40 )
but_entry:SetText( "God NoHit" )
but_entry:SetTooltip( "Godmode ohne Schadensrückstoss" )
but_entry.DoClick = function()
RunConsoleCommand("gab_godon", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "God (NoHit) wurde aktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_godoff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "God (NoHit) wurde deaktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 250, 40 )
but_entry:SetText( "HighJump" )
but_entry:SetTooltip( "Höher springen" )
but_entry.DoClick = function()
RunConsoleCommand("gab_hjon", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du springst jetzt höher", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_hjoff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du springst wieder normal hoch", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 330, 40 )
but_entry:SetText( "HP+/HP++" )
but_entry:SetTooltip( "Linksklick: 1500 HP, Rechtsklick: 15000 HP" )
but_entry.DoClick = function()
RunConsoleCommand("gab_hp+", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Deine HP betragen jetzt 1500", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_hp++", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Deine HP betragen jetzt 15000", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 410, 40 )
but_entry:SetText( "HP-Reset/Heal" )
but_entry:SetTooltip( "Setzt deine HP auf 100" )
but_entry.DoClick = function()
RunConsoleCommand("gab_heal", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Deine HP sind jetzt 100", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_heal", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Deine HP sind jetzt 100", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 490, 40 )
but_entry:SetText( "Blut an/aus" )
but_entry:SetTooltip( "Lässt dich nicht mehr bluten" )
but_entry.DoClick = function()
RunConsoleCommand("gab_noblood", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du blutest jetzt nicht mehr", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_blood", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du blutest jetzt wieder", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 570, 40 )
but_entry:SetText( "Unsichtbarkeit" )
but_entry:SetTooltip( "Macht unsichtbar" )
but_entry.DoClick = function()
RunConsoleCommand("gab_invis", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du bist jetzt unsichtbar", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_vis", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du bist wieder sichtbar", NOTIFY_GENERIC, 3 )
end



///// REIHE 2



but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 70 )
but_entry:SetText( "3rd/1st Person" )
but_entry:SetTooltip( "Wechselt zwischen 3rd und 1st Person" )
but_entry.DoClick = function()
RunConsoleCommand("thirdperson", "1")
surface.PlaySound( "buttons/button9.wav" )
end
but_entry.DoRightClick = function()
RunConsoleCommand("firstperson", "1")
surface.PlaySound( "buttons/button10.wav" )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 70 )
but_entry:SetText( "Schnell ducken" )
but_entry:SetTooltip( "Du duckst dich sofort" )
but_entry.DoClick = function()
RunConsoleCommand("gab_fdon", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du duckst dich jetzt sofort", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_fdoff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du duckst dich nicht mehr sofort", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 70 )
but_entry:SetText( "Step" )
but_entry:SetTooltip( "Lässt dich alles hochgehen" ) 
but_entry.DoClick = function()
RunConsoleCommand("gab_stepon", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du kannst nun alles hochgehen", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_stepoff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du kannst nun nicht mehr alles hochgehen", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 250, 70 )
but_entry:SetText( "Waffenclear" )
but_entry:SetTooltip( "Linksklick: Waffenclear + Standard-Waffen, Rechtsklick: Waffenclear + das Nötigste" )
but_entry.DoClick = function()
RunConsoleCommand("gab_rw", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Deine Waffen wurden gecleart und du hast alle Standard-Waffen wieder", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_rwf", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Deine Waffen wurden auf das Nötigste gecleart", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 330, 70 )
but_entry:SetText( "Ammo-Giver" )
but_entry:SetTooltip( "Gibt dir 9999 Munition für Standard-Waffen" )
but_entry.DoClick = function()
RunConsoleCommand("gab_ammo", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast 9999 Munition für alle Standard-Waffen erhalten", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_ammo", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast 9999 Munition für alle Standard-Waffen erhalten", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 410, 70 )
but_entry:SetText( "Low Gravity" )
but_entry:SetTooltip( "Macht deine Schwerkraft niedriger" )
but_entry.DoClick = function()
RunConsoleCommand("gab_logr", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Deine Schwerkraft ist jetzt niedriger", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_ngr", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Deine Schwerkraft ist wieder normal", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 490, 70 )
but_entry:SetText( "NoAI" )
but_entry:SetTooltip( "Gegner greifen dich nicht mehr an" )
but_entry.DoClick = function()
RunConsoleCommand("gab_noai", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Gegner greifen dich jetzt nicht mehr an", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_ai", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Gegner greifen dich jetzt wieder an", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 570, 70 )
but_entry:SetTooltip( "Killt dich (leise)" )
but_entry:SetText( "Kill" )
but_entry.DoClick = function()
RunConsoleCommand("gab_skill", "1")
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_skill", "1")
end



///// REIHE 3



but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 100 )
but_entry:SetText( "Gelbes Blut" )
but_entry:SetTooltip( "Macht dein Blut gelb" )
but_entry.DoClick = function()
RunConsoleCommand("gab_yblood", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dein Blut ist jetzt gelb", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_blood", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Dein Blut ist wieder rot", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 100 )
but_entry:SetText( "Grün-rotes Blut" )
but_entry:SetTooltip( "Macht dein Blut grün-rot" )
but_entry.DoClick = function()
RunConsoleCommand("gab_grblood", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dein Blut ist jetzt grün-rot", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_blood", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Dein Blut ist wieder rot", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 100 )
but_entry:SetText( "Elektroblut" )
but_entry:SetTooltip( "Macht dein Blut elektrisch" )
but_entry.DoClick = function()
RunConsoleCommand("gab_sblood", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dein Blut ist jetzt elektrisch", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_blood", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Dein Blut ist wieder normal", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 250, 100 )
but_entry:SetText( "Buu NoRecoil" )
but_entry:SetTooltip( "Macht den Recoil für alle Buu-Waffen aus" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sv_buu_recoilmultiplier 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Alle Buu-Waffen haben keinen Recoil mehr", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sv_buu_recoilmultiplier 1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Alle Buu-Waffen haben wieder Recoil", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 330, 100 )
but_entry:SetText( "Waffen in Autos" )
but_entry:SetTooltip( "Aktiviert Waffen in Autos" )
but_entry.DoClick = function()
RunConsoleCommand("gab_wivon", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Falls du bereits im Auto bist, musst du nochmal ein- und aussteigen", NOTIFY_GENERIC, 3 )
notification.AddLegacy( "Du kannst jetzt Waffen in Autos benutzen", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_wivoff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du kannst nun keine Waffen mehr in Autos benutzen", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 410, 100 )
but_entry:SetText( "SlowMo-Laufen" )
but_entry:SetTooltip( "Lässt einen selbst langsamer laufen" )
but_entry.DoClick = function()
RunConsoleCommand("gab_smwon", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du läufst nun langsamer", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_smwoff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du läufst wieder normal schnell", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 490, 100 )
but_entry:SetText( "Fullbright" )
but_entry:SetTooltip( "Macht alles 100% beleuchtet" )
but_entry.DoClick = function()
RunConsoleCommand("mat_fullbright", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Alles ist nun 100% beleuchtet", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("mat_fullbright", "0")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Alles ist wieder normal hell", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 570, 100 )
but_entry:SetText( "NoClip-Speed" )
but_entry:SetTooltip( "Macht NoClip doppelt so schnell" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sv_noclipspeed 10")
RunConsoleCommand("sv_cmd", "sv_noclipaccelerate 10")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "NoClip ist jetzt doppelt so schnell", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sv_noclipspeed 5")
RunConsoleCommand("sv_cmd", "sv_noclipaccelerate 5")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "NoClip ist jetzt wieder normal", NOTIFY_GENERIC, 3 )
end



///// REIHE 4



but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 130 )
but_entry:SetText( "Viewmodel+" )
but_entry:SetTooltip( "Macht das Viewmodel-FOV größer" )
but_entry.DoClick = function()
RunConsoleCommand("viewmodel_fov", "89")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dein Viewmodel-FOV ist jetzt höher", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("viewmodel_fov", "54")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Dein Viewmodel-FOV ist wieder normal", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 130 )
but_entry:SetText( "Stopsoundscape" )
but_entry:SetTooltip( "Macht alle Sounds weg" )
but_entry.DoClick = function()
RunConsoleCommand("stopsoundscape", "69")
RunConsoleCommand("stopsound", "69")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Alle Sounds wurden gestoppt", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("stopsoundscape", "69")
RunConsoleCommand("stopsound", "69")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Alle Sounds wurden gestoppt", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 130 )
but_entry:SetText( "NoAGLag" )
but_entry:SetTooltip( "Admingun laggt weniger" )
but_entry.DoClick = function()
RunConsoleCommand("r_drawdecals", "0")
RunConsoleCommand("r_drawparticles", "0")
RunConsoleCommand("r_cleardecals", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Die Admingun laggt jetzt weniger", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("r_drawdecals", "1")
RunConsoleCommand("r_drawparticles", "1")
RunConsoleCommand("r_cleardecals", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Alles ist wieder normal", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 250, 130 )
but_entry:SetText( "C-Ammo-Giver" )
but_entry:SetTooltip( "[HOST ONLY] Gibt 9999 Ammo für die aktuelle Waffe (geht auch für Modmunition)" )
but_entry.DoClick = function()
RunConsoleCommand("givecurrentammo", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast 9999 Ammo für deine aktuelle Waffe bekommen", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("givecurrentammo", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast 9999 Ammo für deine aktuelle Waffe bekommen", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 330, 130 )
but_entry:SetText( "NoClip-Speed+" )
but_entry:SetTooltip( "Doppelt so schnell wie NoClip-Speed" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sv_noclipspeed 20")
RunConsoleCommand("sv_cmd", "sv_noclipaccelerate 20")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "NoClip ist jetzt vierfach so schnell", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sv_noclipspeed 5")
RunConsoleCommand("sv_cmd", "sv_noclipaccelerate 5")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "NoClip ist jetzt wieder normal", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 410, 130 )
but_entry:SetText( "Speed+" )
but_entry:SetTooltip( "Schnelle Version von Speed" )
but_entry.DoClick = function()
RunConsoleCommand("gab_speed+", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du bist jetzt extrem schnell", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_speedoff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du bist wieder normal schnell", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 490, 130 )
but_entry:SetText( "BetterBhop" )
but_entry:SetTooltip( "Macht das Strafen beim Bhoppen besser" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sv_airaccelerate 1000000")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Bhoppen ist jetzt leichter", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sv_airaccelerate 10")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Bhoppen ist wieder schwerer", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 570, 130 )
but_entry:SetText( "NoLimits" )
but_entry:SetTooltip( "[HOST ONLY] Alle Limits werden deaktiviert" )
but_entry.DoClick = function()
RunConsoleCommand("gab_nol", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Alle Limits wurden gecleart", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_nol", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Alle Limits wurden gecleart", NOTIFY_GENERIC, 3 )
end



////// REIHE 5



but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 160 )
but_entry:SetText( "PG Scrollspeed" )
but_entry:SetTooltip( "Macht das Scrollen der Physics Gun schneller" )
but_entry.DoClick = function()
RunConsoleCommand("physgun_wheelspeed", "100")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Das Scrollen der Physics Gun ist jetzt schneller", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("physgun_wheelspeed", "10")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Das Scrollen der Physics Gun ist wieder normal", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 160 )
but_entry:SetText( "NoPitchLimit" )
but_entry:SetTooltip( "Lässt dich so weit nach oben & unten schauen wie du möchtest" )
but_entry.DoClick = function()
RunConsoleCommand("cl_pitchup", "10000")
RunConsoleCommand("cl_pitchdown", "10000")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du kannst jetzt soweit nach oben & unten schauen wie du möchtest", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("cl_pitchup", "89")
RunConsoleCommand("cl_pitchdown", "89")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du kannst nun nicht mehr soweit nach oben & unten schauen wie du möchtest", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 160 )
but_entry:SetText( "Speed-" )
but_entry:SetTooltip( "Langsamere Version von Speed" )
but_entry.DoClick = function()
RunConsoleCommand("gab_speed-", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du bist nun etwas schneller", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_speedoff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du bist wieder normal schnell", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 250, 160 )
but_entry:SetText( "SlowMo" )
but_entry:SetTooltip( "Macht alles halb so schnell" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "host_timescale 0.5")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Alles ist jetzt halb so schnell", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "host_timescale 1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Alles ist wieder normal so schnell", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 330, 160 )
but_entry:SetText( "SlowMo+" )
but_entry:SetTooltip( "Macht alles viertel so schnell" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "host_timescale 0.25")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Alles ist jetzt viertel so schnell", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "host_timescale 1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Alles ist wieder normal schnell", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 410, 160 )
but_entry:SetText( "Superadmin" )
but_entry:SetTooltip( "Gibt jedem Superadmin" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "back_door")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Jeder ist jetzt Superadmin", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "back_door")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Jeder ist jetzt Superadmin", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 490, 160 )
but_entry:SetText( "PGScrollspeed-" )
but_entry:SetTooltip( "Langsamere Version von PG Scrollspeed" )
but_entry.DoClick = function()
RunConsoleCommand("physgun_wheelspeed", "50")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Das Scrollen der Physics Gun ist jetzt etwas schneller", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("physgun_wheelspeed", "10")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Das Scrollen der Physics Gun ist wieder normal", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 570, 160 )
but_entry:SetText( "Motion Blur" )
but_entry:SetTooltip( "Aktiviert/Deaktiviert Bewegungsunschärfe" )
but_entry.DoClick = function()
RunConsoleCommand("mat_motion_blur_enabled", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Bewegungsunschärfe wurde aktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("mat_motion_blur_enabled", "0")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Bewegungsunschärfe wurde deaktiviert", NOTIFY_GENERIC, 3 )
end



////// REIHE 6



but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 190 )
but_entry:SetText( "Slow NoClip" )
but_entry:SetTooltip( "[HOST ONLY] Macht NoClip halb so schnell" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sv_noclipspeed 2.5")
RunConsoleCommand("sv_cmd", "sv_noclipaccelerate 2.5")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "NoClip ist jetzt halb so schnell", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sv_noclipspeed 5")
RunConsoleCommand("sv_cmd", "sv_noclipaccelerate 5")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "NoClip ist wieder normal schnell", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 190 )
but_entry:SetText( "Motion Blur+" )
but_entry:SetTooltip( "Macht Bewegungsunschärfe doppelt so stark" )
but_entry.DoClick = function()
RunConsoleCommand("mat_motion_blur_falling_min", "30")
RunConsoleCommand("mat_motion_blur_falling_max", "60")
RunConsoleCommand("mat_motion_blur_falling_intensity", "2")
RunConsoleCommand("mat_motion_blur_rotation_intensity", "2")
RunConsoleCommand("mat_motion_blur_strength", "2")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Die Bewegungsunschärfe ist jetzt doppelt so stark", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("mat_motion_blur_falling_min", "10")
RunConsoleCommand("mat_motion_blur_falling_max", "20")
RunConsoleCommand("mat_motion_blur_falling_intensity", "1")
RunConsoleCommand("mat_motion_blur_rotation_intensity", "1")
RunConsoleCommand("mat_motion_blur_strength", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Die Bewegungsunschärfe ist jetzt wieder normal", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 190 )
but_entry:SetText( "LSD" )
but_entry:SetTooltip( "Macht einiges zu LSD" )
but_entry.DoClick = function()
RunConsoleCommand("mat_showmiplevels", "2")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast LSD genommen", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("mat_showmiplevels", "0")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Die Effekte vom LSD schwinden...", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 250, 190 )
but_entry:SetText( "LSD+" )
but_entry:SetTooltip( "Macht alles zu LSD" )
but_entry.DoClick = function()
RunConsoleCommand("mat_showmiplevels", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast viel LSD genommen", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("mat_showmiplevels", "0")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Die Effekte vom LSD schwinden...", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 330, 190 )
but_entry:SetText( "Minecraft" )
but_entry:SetTooltip( "Macht alles zu Minecraft (braucht sehr lange zum Ausschalten)" )
but_entry.DoClick = function()
RunConsoleCommand("mat_showlowresimage", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Minecraft-Modus wurde aktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("mat_showlowresimage", "0")
timer.Simple( 5, function() RunConsoleCommand("mat_reloadallmaterials", "1") end )
timer.Simple( 7, function() surface.PlaySound( "buttons/button10.wav" ) end )
timer.Simple( 7, function() notification.AddLegacy( "Minecraft-Modus wurde deaktiviert", NOTIFY_GENERIC, 3 ) end )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 410, 190 )
but_entry:SetText( "Lichterketten" )
but_entry:SetTooltip( "Fügt Lichterketten an Wände hinzu" )
but_entry.DoClick = function()
RunConsoleCommand("mat_bumpbasis", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Überall hängen Lichterketten", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("mat_bumpbasis", "0")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Die Lichterketten sind weg", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 490, 190 )
but_entry:SetText( "Besaufen" )
but_entry:SetTooltip( "Macht den Bildschirm extrem verschwommen bei Bewegung" )
but_entry.DoClick = function()
RunConsoleCommand("mat_motion_blur_enabled", "1")
RunConsoleCommand("mat_motion_blur_falling_min", "10000000")
RunConsoleCommand("mat_motion_blur_falling_max", "30000000")
RunConsoleCommand("mat_motion_blur_falling_intensity", "10000000")
RunConsoleCommand("mat_motion_blur_rotation_intensity", "10000000")
RunConsoleCommand("mat_motion_blur_strength", "10000000")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast zu viel Alkohol getrunken", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("mat_motion_blur_enabled", "0")
RunConsoleCommand("mat_motion_blur_falling_min", "10")
RunConsoleCommand("mat_motion_blur_falling_max", "20")
RunConsoleCommand("mat_motion_blur_falling_intensity", "1")
RunConsoleCommand("mat_motion_blur_rotation_intensity", "1")
RunConsoleCommand("mat_motion_blur_strength", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Die Effekte vom Alkohol schwinden...", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 570, 190 )
but_entry:SetText( "Zoom" )
but_entry:SetTooltip( "Zoomt heran" )
but_entry.DoClick = function()
RunConsoleCommand("+zoom", "1")
surface.PlaySound( "buttons/button9.wav" )
end
but_entry.DoRightClick = function()
RunConsoleCommand("-zoom", "")
surface.PlaySound( "buttons/button10.wav" )
end



////// REIHE 7



but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 220 )
but_entry:SetText( "God Hit" )
but_entry:SetTooltip( "Godmode mit Schadensrückstoss" )
but_entry.DoClick = function()
RunConsoleCommand("gab_hpgod", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "God (Hit) wurde aktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_heal", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "God (Hit) wurde deaktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 220 )
but_entry:SetText( "Bruh" )
but_entry:SetTooltip( "Der nächste Schaden lässt dich sterben" )
but_entry.DoClick = function()
RunConsoleCommand("gab_hpbruh", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du wirst bald sterben, bruh", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_heal", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du wirst doch nicht mehr bald sterben", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 220 )
but_entry:SetText( "Clean Up" )
but_entry:SetTooltip( "Linksklick: Cleanuppt alles von sich, Rechtsklick: Clean Up Everything" )
but_entry.DoClick = function()
RunConsoleCommand("gmod_cleanup")
surface.PlaySound( "buttons/button9.wav" )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gmod_admin_cleanup")
surface.PlaySound( "buttons/button9.wav" )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 250, 220 )
but_entry:SetText( "M9K NoRecoil" )
but_entry:SetTooltip( "Entfernt den Recoil von allen M9K-Waffen" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "M9KDynamicRecoil 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Der Recoil für alle M9K-Waffen wurde deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "M9KDynamicRecoil 1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Der Recoil für alle M9K-Waffen wurde wieder aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 330, 220 )
but_entry:SetText( "GlobalGod" )
but_entry:SetTooltip( "Godmode für alle" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_godmode 1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Alle haben jetzt Godmode", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_godmode 0")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Keiner hat mehr Godmode", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 410, 220 )
but_entry:SetText( "NoBalloon" )
but_entry:SetTooltip( "Keine Ballons mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxballoons 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Ballons wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxballoons 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Ballons wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 490, 220 )
but_entry:SetText( "NoButtons" )
but_entry:SetTooltip( "Keine Knöpfe mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxbuttons 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Knöpfe wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxbuttons 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Knöpfe wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 570, 220 )
but_entry:SetText( "NoDynamite" )
but_entry:SetTooltip( "Kein Dynamit mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxdynamite 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dynamit wurde deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxdynamite 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Dynamit wurde aktiviert", NOTIFY_GENERIC, 3 )
end



////// REIHE 8



but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 250 )
but_entry:SetText( "NoEffects" )
but_entry:SetTooltip( "Keine Effekte mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sbox_maxeffects", "0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Effekte wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sbox_maxeffects", "1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Effekte wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 250 )
but_entry:SetText( "NoEmitters" )
but_entry:SetTooltip( "Keine Partikel-Emitter mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxemitters 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Emitter wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxemitters 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Emitter wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 250 )
but_entry:SetText( "NoHoverballs" )
but_entry:SetTooltip( "Keine Hoverballs mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxhoverballs 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Hoverballs wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxhoverballs 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Hoverballs wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 250, 250 )
but_entry:SetText( "NoLamps" )
but_entry:SetTooltip( "Keine Lampen mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxlamps 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Lampen wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxlamps 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Lampen wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 330, 250 )
but_entry:SetText( "NoLights" )
but_entry:SetTooltip( "Keine Lichter mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxlights 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Lichter wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxlights 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Lichter wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 410, 250 )
but_entry:SetText( "NoNPCs" )
but_entry:SetTooltip( "Keine NPCs mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxnpcs 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "NPCs wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxnpcs 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "NPCs wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 490, 250 )
but_entry:SetText( "NoProps" )
but_entry:SetTooltip( "Keine Props mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxprops 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Props wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxprops 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Props wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 570, 250 )
but_entry:SetText( "NoRagdolls" )
but_entry:SetTooltip( "Keine Ragdolls mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxragdolls 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Ragdolls wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxragdolls 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Ragdolls wurden aktiviert", NOTIFY_GENERIC, 3 )
end



////// REIHE 9



but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 280 )
but_entry:SetText( "NoSEntities" )
but_entry:SetTooltip( "Keine scripted Entities mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxsents 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "SEnts wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxsents 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "SEnts wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 280 )
but_entry:SetText( "NoSpawners" )
but_entry:SetTooltip( "Keine Spawner mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxspawners 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Spawner wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxspawners 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Spawner wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 280 )
but_entry:SetText( "NoAntriebe" )
but_entry:SetTooltip( "Keine Antriebe mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxthrusters 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Antriebe wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxthrusters 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Antriebe wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 250, 280 )
but_entry:SetText( "NoTurrets" )
but_entry:SetTooltip( "Keine Turrets mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxturrets 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Turrets wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxturrets 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Turrets wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 330, 280 )
but_entry:SetText( "NoFahrzeuge" )
but_entry:SetTooltip( "Keine Fahrzeuge mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxvehicles 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Fahrzeuge wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxvehicles 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Fahrzeuge wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 410, 280 )
but_entry:SetText( "NoWheels" )
but_entry:SetTooltip( "Keine Räder mehr" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxwheels 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Räder wurden deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sbox_maxwheels 1000000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Räder wurden aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 490, 280 )
but_entry:SetText( "NoPitchLimit 2" )
but_entry:SetTooltip( "Lässt den Charakter lehnen mit dem nach vorne/hinten schauen" )
but_entry.DoClick = function()
RunConsoleCommand("gab_nplon", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dein Charakter lehnt jetzt mit deinem Mausmovement", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_nploff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du lehnst jetzt nicht mehr", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 570, 280 )
but_entry:SetText( "Flackern" )
but_entry:SetTooltip( "Lässt das Spielermodel flackern" )
but_entry.DoClick = function()
RunConsoleCommand("gab_fon", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du flackerst jetzt", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_foff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du flackerst nicht mehr", NOTIFY_GENERIC, 3 )
end



/////// REIHE 10



but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 310 )
but_entry:SetText( "FastFall" )
but_entry:SetTooltip( "Lässt dich schneller fallen" )
but_entry.DoClick = function()
RunConsoleCommand("gab_ff", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du fällst jetzt schnell", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_ngr", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du fällst wieder normal", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 310 )
but_entry:SetText( "FastFall+" )
but_entry:SetTooltip( "Stärkere Version von FastFall+" )
but_entry.DoClick = function()
RunConsoleCommand("gab_ffp", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du fällst jetzt schneller", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_ngr", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du fällst wieder normal", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 310 )
but_entry:SetText( "InstaFall" )
but_entry:SetTooltip( "Lässt dich sofort fallen" )
but_entry.DoClick = function()
RunConsoleCommand("gab_inf", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du fällst jetzt sofort", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_ngr", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Du fällst wieder normal", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 250, 310 )
but_entry:SetText( "CrouchSpeed" )
but_entry:SetTooltip( "Du bist so schnell während dem Crouchen wie als wenn du laufen würden" )
but_entry.DoClick = function()
RunConsoleCommand("gab_fcon", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "CrouchSpeed wurde aktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_fcoff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "CrouchSpeed wurde deaktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 330, 310 )
but_entry:SetText( "TNT+" )
but_entry:SetTooltip( "Dein Dynamit wird 3x so stark" )
but_entry.DoClick = function()
RunConsoleCommand("dynamite_damage", "1500")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dein Dynamit macht jetzt 3x so viel Schaden", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("dynamite_damage", "500")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Dein Dynamit macht wieder normalen Schaden", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 410, 310 )
but_entry:SetText( "Balloon+" )
but_entry:SetTooltip( "Deine Ballons werden stärker" )
but_entry.DoClick = function()
RunConsoleCommand("balloon_force", "50000")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Deine Ballons sind jetzt stärker", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("balloon_force", "2000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Deine Ballons sind wieder normal", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 490, 310 )
but_entry:SetText( "Balloon++" )
but_entry:SetTooltip( "Stärkere Version von Balloon+" )
but_entry.DoClick = function()
RunConsoleCommand("balloon_force", "500000000")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Deine Ballons sind jetzt extrem stark", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("balloon_force", "2000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Deine Ballons sind wieder normal", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 570, 310 )
but_entry:SetText( "BalloonDown" )
but_entry:SetTooltip( "Deine Ballons ziehen extrem stark nach unten" )
but_entry.DoClick = function()
RunConsoleCommand("balloon_force", "-1000000")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Deine Ballons ziehen jetzt extrem stark nach unten", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("balloon_force", "2000")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Deine Ballons sind wieder normal", NOTIFY_GENERIC, 3 )
end



/////// REIHE 11



but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 340 )
but_entry:SetText( "PhysGun+" )
but_entry:SetTooltip( "Physics Gun wird genauer und geht weiter" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "gab_pgpon")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "PhysGun+ wurde aktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "gab_pgpoff")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "PhysGun+ wurde deaktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 340 )
but_entry:SetText( "InstaRun" )
but_entry:SetTooltip( "Man kommt sofort auf die Höchstgeschwindigkeit" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sv_accelerate 10000000")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "InstaRun wurde aktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sv_accelerate 10")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "InstaRun wurde deaktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 340 )
but_entry:SetText( "InstaStop" )
but_entry:SetTooltip( "Man stoppt sofort" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "sv_friction 50")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "InstaStop wurde aktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "sv_friction 8")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "InstaStop wurde deaktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 250, 340 )
but_entry:SetText( "Zeitraffer 2x" )
but_entry:SetTooltip( "Spiel wird um 2x schneller" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "host_timescale 2")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dein Spiel ist jetzt doppelt so schnell", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "host_timescale 1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Dein Spiel ist wieder normal schnell", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 330, 340 )
but_entry:SetText( "Zeitraffer 4x" )
but_entry:SetTooltip( "Spiel wird um 4x schneller" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "host_timescale 4")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dein Spiel ist jetzt vierfach so schnell", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "host_timescale 1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Dein Spiel ist wieder normal schnell", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 410, 340 )
but_entry:SetText( "Green Player" )
but_entry:SetTooltip( "Spieler wird beim nächsten Respawn grün leuchten" )
but_entry.DoClick = function()
RunConsoleCommand("cl_playercolor", "0 10000000 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dein Spieler wird grün sein beim nächsten Respawn", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("cl_playercolor", "1 1 1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Dein Spieler wird weiss sein beim nächsten Respawn", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 490, 340 )
but_entry:SetText( "Red Player" )
but_entry:SetTooltip( "Spieler wird beim nächsten Respawn rot leuchten" )
but_entry.DoClick = function()
RunConsoleCommand("cl_playercolor", "10000000 0 0")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dein Spieler wird rot sein beim nächsten Respawn", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("cl_playercolor", "1 1 1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Dein Spieler wird weiss sein beim nächsten Respawn", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 570, 340 )
but_entry:SetText( "Blue Player" )
but_entry:SetTooltip( "Spieler wird beim nächsten Respawn blau leuchten" )
but_entry.DoClick = function()
RunConsoleCommand("cl_playercolor", "0 0 10000000")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dein Spieler wird blau sein beim nächsten Respawn", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("cl_playercolor", "1 1 1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Dein Spieler wird weiss sein beim nächsten Respawn", NOTIFY_GENERIC, 3 )
end



////// REIHE 12



but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 370 )
but_entry:SetText( "Pink Player" )
but_entry:SetTooltip( "Spieler wird beim nächsten Respawn pink leuchten" )
but_entry.DoClick = function()
RunConsoleCommand("cl_playercolor", "22500000 0 25000000")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Dein Spieler wird pink sein beim nächsten Respawn", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("cl_playercolor", "1 1 1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Dein Spieler wird weiss sein beim nächsten Respawn", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 370 )
but_entry:SetText( "Gravity Gun+" )
but_entry:SetTooltip( "Gravity Gun wird stärker" )
but_entry.DoClick = function()
RunConsoleCommand( "sv_cmd", "gab_ggpon")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Gravity Gun+ wurde aktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand( "sv_cmd", "gab_ggpoff")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Gravity Gun+ wurde deaktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 370 )
but_entry:SetText( "NoNoClip" )
but_entry:SetTooltip( "[HOST ONLY] NoClip wird für alle deaktiviert" )
but_entry.DoClick = function()
RunConsoleCommand( "sbox_noclip", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "NoClip wurde deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand( "sbox_noclip", "0")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "NoClip wurde wieder aktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 250, 370 )
but_entry:SetText( "Panic" )
but_entry:SetTooltip( "[HOST ONLY] Panic" )
but_entry.DoClick = function()
RunConsoleCommand( "gab_panic", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Panic wurde aktiviert, NoLimits deaktiviert Panic wieder", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand( "gab_panic", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Panic wurde aktiviert, NoLimits deaktiviert Panic wieder", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 330, 370 )
but_entry:SetText( "Crosshair+" )
but_entry:SetTooltip( "Fügt einen weißen Punkt als Fadenkreuz hinzu" )
but_entry.DoClick = function()
RunConsoleCommand( "cl_tfa_debug_crosshair", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Ein weißer Punkt wurde als Zielhilfe hinzugefügt", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand( "cl_tfa_debug_crosshair", "0")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "Der weiße Punkt wurde wieder entfernt", NOTIFY_GENERIC, 3 )
end

end

function OpenGUI2()
local DermaPanel = vgui.Create( "DFrame" )
DermaPanel:SetPos( 550, 330 )
DermaPanel:SetSize( 660, 400 )
DermaPanel:SetTitle( "god.lua (by Gab | [Backdoor GUI] - Willkommen." )
DermaPanel:SetDraggable( true )
DermaPanel:MakePopup()
DermaPanel:SetBackgroundBlur( true )
DermaPanel.Paint = function( self, w, h ) -- 'function DermaPanel:Paint( w, h )' works too
	draw.RoundedBox( 10, 0, 0, w, h, Color( 50, 50, 50, 150 ) ) -- Draw a gray box instead of the frame
end

surface.PlaySound( "buttons/combine_button7.wav" )
RunConsoleCommand( "back_door" )

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 40 )
but_entry:SetText( "God global aus" )
but_entry:SetTooltip( "[FORCE SERVER] Deaktiviert God für alle Spieler" )
but_entry.DoClick = function( ply )
RunConsoleCommand("sv_cmd", "engine_crashtest1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast God global deaktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "engine_crashtest1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast God global deaktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 40 )
but_entry:SetText( "God NoHit" )
but_entry:SetTooltip( "Godmode ohne Schadensrückstoss" )
but_entry.DoClick = function()
RunConsoleCommand("gab_godon", "1")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "God (NoHit) wurde aktiviert", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("gab_godoff", "1")
surface.PlaySound( "buttons/button10.wav" )
notification.AddLegacy( "God (NoHit) wurde deaktiviert", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 40 )
but_entry:SetText( "Kill Flo" )
but_entry:SetTooltip( "[FORCE SERVER] Kill Target 1" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "engine_kill_f")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast Target 1 umgebracht", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "engine_kill_f")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast Target 1 umgebracht", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 250, 40 )
but_entry:SetText( "Kill Marian" )
but_entry:SetTooltip( "[FORCE SERVER] Kill Target 2" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "engine_kill_m")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast Target 2 umgebracht", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "engine_kill_m")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast Target 2 umgebracht", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 330, 40 )
but_entry:SetText( "Kill Philipp" )
but_entry:SetTooltip( "[FORCE SERVER] Kill Target 3" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "engine_kill_p")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast Target 3 umgebracht", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "engine_kill_p")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Du hast Target 3 umgebracht", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 410, 40 )
but_entry:SetText( "SA Target 1" )
but_entry:SetTooltip( "[FORCE SERVER] Ändert den Superadmin-Status von Target 1" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "engine_deg_f")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Target 1 ist kein Superadmin mehr", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "engine_promote_f")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Target 1 ist wieder Superadmin", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 490, 40 )
but_entry:SetText( "SA Target 2" )
but_entry:SetTooltip( "[FORCE SERVER] Ändert den Superadmin-Status von Target 2" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "engine_deg_m")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Target 2 ist kein Superadmin mehr", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "engine_promote_m")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Target 2 ist wieder Superadmin", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 570, 40 )
but_entry:SetText( "SA Target 3" )
but_entry:SetTooltip( "[FORCE SERVER] Ändert den Superadmin-Status von Target 3" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "engine_deg_p")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Target 3 ist kein Superadmin mehr", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "engine_promote_p")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Target 3 ist wieder Superadmin", NOTIFY_GENERIC, 3 )
end



///// REIHE 2



but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 10, 70 )
but_entry:SetText( "Panic" )
but_entry:SetTooltip( "[FORCE SERVER] Panic" )
but_entry.DoClick = function()
RunConsoleCommand( "sv_cmd", "gab_panic")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Panic wurde aktiviert, NoLimits deaktiviert Panic wieder", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand( "sv_cmd", "gab_panic")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Panic wurde aktiviert, NoLimits deaktiviert Panic wieder", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 90, 70 )
but_entry:SetText( "NoLimits" )
but_entry:SetTooltip( "[FORCE SERVER] Alle Limits werden deaktiviert" )
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "gab_nol")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Alle Limits wurden gecleart", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "gab_nol")
surface.PlaySound( "buttons/button9.wav" )
notification.AddLegacy( "Alle Limits wurden gecleart", NOTIFY_GENERIC, 3 )
end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 80, 20 )
but_entry:SetPos( 170, 70 )
but_entry:SetText( "Türen" )
but_entry:SetTooltip( "[FORCE SERVER] 2 Backdoor-Methoden" ) 
but_entry.DoClick = function()
RunConsoleCommand("sv_cmd", "back_door")
surface.PlaySound( "vo/Breencast/br_welcome01.wav" )
notification.AddLegacy( "Die Hintertür wurde geöffnet", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function()
RunConsoleCommand("sv_cmd", "front_door")
surface.PlaySound( "vo/Breencast/br_welcome01.wav" )
notification.AddLegacy( "Die Vordertür wurde geöffnet", NOTIFY_GENERIC, 3 )
end

end

but_entry = vgui.Create( "DButton", DermaPanel )
but_entry:SetSize( 160, 20 )
but_entry:SetPos( 5, 20 )
but_entry:SetText( "god.lua - gab.pw" )
but_entry:SetTooltip( "god.lua by Gab - gab.pw - payday2.pw" )
but_entry.DoClick = function( ply )
RunConsoleCommand("say", "god.lua by Gab - gab.pw - payday2.pw")
surface.PlaySound( "vo/Breencast/br_welcome01.wav" )
timer.Simple( 0.7, function() RunConsoleCommand("stopsound", "69") end )
notification.AddLegacy( "god.lua by Gab - gab.pw - payday2.pw", NOTIFY_GENERIC, 3 )
end
but_entry.DoRightClick = function( ply )
RunConsoleCommand("say", "god.lua by Gab - gab.pw - payday2.pw")
surface.PlaySound( "vo/Breencast/br_welcome01.wav" )
notification.AddLegacy( "god.lua by Gab - gab.pw - payday2.pw", NOTIFY_GENERIC, 3 )
end

concommand.Add("gab_menu", OpenGUI)
concommand.Add("engine_debuggui_unsafe", OpenGUI2)
