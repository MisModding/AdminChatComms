# AdminChatComms

This is a modification created mutually by -4iY- and Theros, both being official Miscreated Q/A Testers.
This package is aimed towards new admins having their own servers and provides all the frequently used chat commands. You will find the commands and their usage below.

---

Firstly, to tell the game who the admins are, you will need to create a .txt file next to hosting.cfg called 'Admins.txt' on the server and in that file list SteamID64's of every admin and user you want to have access to the commands EACH ON A SEPARATE LINE. You can also do it like this:
```
NAME1 ID1
NAME2 ID2
```
[as many names and IDs as you want to, there is one space between the name and the ID - do not use names with spaces as that breaks the script].
Any issues with the file with be output to your latest server.log, so if something is not working check it for errors.


Here are the commands themselves:

- !ban STEAMID64
- !unban STEAMID64
- !kick STEAMID64
- !airdrop [spawns airdrop event (plane)]
- !ufo [spawns UFO event]
- !planecrash [spawns planecrash event]
- !bases_dump [logs all parts of all bases - can lead to massive lag as it's being done, use sparingly!]
- !base_delete [deletes the nearest base - SUPER CAREFUL!]
- !give [gives you an item to inventory, use script names - link below]
    - can also accept an item count, example: !give applefresh*5            -> gives 5 apples
    - can also give a set of items, use `;` to delimit items, | to specify a child item, and * specifies the amount
        example: !give DuffelBag|762x30*4;AKM|762x30  -> gives DuffelBag containing x5 762x30 mags and AKM with a loaded mag
- !spawn [spawns an item 2m in front of you, naming same as !give]
- !spawnent [spawns entities, such as vehicles or explosive barrels]
- !heal [heals the user to 100 HP]
- !wmsg [sends a message to all users in the chat window]
- !wann [sends a message to all users at top of screen]
- !mypos [usable by anyone, outputs the user's current map coordinates (not the GPS ones)]
- !jf [Force join a faction, admin-only to prevent abuse]
- !rcon [executes a command via the RCON, make sure to retain the RCON syntax in full]
- !summon STEAMID64 [summons a player to you by ID]
- !tp [teleports you to coordinates]
- !time [forces a time on the server, e.g. 15 is 3 p.m.]
- !weather [forces a weather pattern on the server, use numbers or full names]
- !spawnvehical [classname] [spawn a vehical infront of the player]
    - optionally provide a valid skin name as the last parameter to skin the vehical

---

Spafbi's MisInformation, which has all script names of items and tracks differences between game versions: 
https://github.com/Spafbi/mis-information/tree/master/info/Scripts/Entities/Items/XML

If you would like to learn more about Miscreated modding, we have created a 'newbie' guide just for you!
Here's a link: [MisModding-101](https://github.com/MisModding/MisModding-101)
Join the official [Miscreated Discord](https://discord.gg/Miscreated) and the [UnOfficial MisModding Discord](https://discord.gg/ttdzgzp)