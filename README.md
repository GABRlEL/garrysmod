# god.lua
**Direkt vorab** - das Menü ist als Sandbox-Menü zum Nutzen mit Freunden gedacht, bedeutet:

Ein Lua Injector bringt nichts weil 99% der Features auf einem Server, der das Script nicht am Laufen hat, nicht funktioniert.
(god.lua ist ein Serverside Script)

Ich habe das Menü entwickelt, um Sandbox mit Freunden angenehmer zu machen.

---

**Allgemein:**

Das Menü hat ein simples GUI, welches bei manchen Features sowohl Links- als auch Rechts-Klick auf die Buttons supported.

![GUI](https://i.imgur.com/u04zSjw.png)

(Sorry, nur vom Main Menu - Game grad nicht installiert, aber Admin Menu sieht nicht groß anders aus)


Alle Features haben einen Konsolen-Command "dahinter", bedeutet: 

* ihr müsst das GUI nicht benutzen.
* ihr könnt Features einfach auf Tasten binden.
* ihr könnt Scripts schreiben, um schnell Features an/aus zu schalten.


Alle Features haben auch Tooltips, sobald man darüber hovert.


Außerdem ist eine Server Backdoor eingebaut, bedeutet, sobald der Host eines Servers dieses Script ausführt:
* werden alle User automatisch zum Superadmin gemacht.
* wird der Command "sv_cmd" hinzugefügt. Darüber können auf dem Server Commands ausgeführt werden, z. B. "sv_cmd sv_cheats 1".
* im Admin-Menü können User (nachdem sie dort eingespeichert wurden, siehe god.lua Dateiende) nach Belieben vom Superadmin-Status pro/demoted werden.
* Der Command "back_door" macht jeden zum Superadmin. Der Command "front_door" macht die eingetragene Steam ID zum Superadmin (in diesem Szenario mich).


Auch hat das Menü ein Target Kill-Feature. Dafür müssen auch die Steam IDs eingetragen werden.

---

**How to use:**

* Lua-Files in Steam\Garrys Mod\garrysmod\lua ziehen
* Binds aus necessarybinds.cfg nach Wunsch in Konsole eintippen
* Main-Menu mit gab_menu öffnen, Admin-Menu mit engine_debuggui_unsafe öffnen

