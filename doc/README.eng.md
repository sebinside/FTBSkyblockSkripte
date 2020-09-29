# FTB Skyblock Scripts

In this repository are all scripts which are currently in use in my [FTB Skyblock](https://www.youtube.com/playlist?list=PL9oBXB6tQnlX013V1v20WkfzI9R2zamHi).

If you want to use one of them yourself just rebuild the structure like shown in the pictures and use the command `pastebin get {id} startup` and replace `{id}` with one of the pastebin links down below!

Important note: FTB Skyblock is played in Minecraft version `1.7.10`. The scripts may not work in different versions!
You can also use my tool from the year 2013 to copy the scripts into Minecraft turtles: [C3P-Download](http://www.mediafire.com/file/d8k3t9d1h9chs0s/C3P-1.0.2.2.zip/file)

## Portal
**[Pastebin](https://pastebin.com/3DhtLbmF)-ID: `3DhtLbmF`**

*Command: `pastebin get 3DhtLbmF startup`*

This script waits until a redstone signal triggers from behind and activates a portal (on the computer). After five seconds the portal will be activated again.

Video explaining the script (in German): [FTB Skyblock Folge 271](https://www.youtube.com/watch?v=5FlJwbOFivo)

![Portal](../img/portal.png)

## Bloodmagic
**[Pastebin](https://pastebin.com/0fNq0Rj9)-ID: `0fNq0Rj9`**

*Command: `pastebin get 0fNq0Rj9 startup`*

This script allows the automatic craftig process of Blood Magic. A Turtle monitors the content of a chest above it. If items are found they will be moved into the Blood Altar and the transmutation process is monitored. Once they sucessfully transmuted they will be sucked out of the Altar and moved into another chest next to it.

Video explaing the script (in German): [FTB Skyblock Folge 207](https://youtu.be/JVBjpzzMEmo)

![Blood Magic](../img/bloodmagic.png)

## Essentia
**[Pastebin](https://pastebin.com/uCzuziUt)-ID: `uCzuziUt` & `THhWPmBk`**

*Command: `pastebin get uCzuziUt essentia`* and `pastebin get THhWPmBk start`

This script asks using the neighbouring Essentia-Provider which Essence has the least amount in the ME-System (less than a threshold, e.g. 2048). If a defizit of essence is detected some *Ethereal essence* will be automatically extracted using the neighbouring ME-Interface in a chest. A sufficient perfomant wisp farm will be required. This script can sometimes crash with a java exception to prevent this use the second script `essentia-start` to start the script again.

Please be aware that this script can also crash a server sometimes. Use in moderation!

PS: violete Turtle names can be achieved by using: `os.setComputerLabel(string.char(194,167) .. "5<turtlename>")`

Video explaining the script (in German): [FTB Skyblock Folge 286](https://www.youtube.com/watch?v=EVEgyugdLgU)

![Essentia](../img/essentia.png)
