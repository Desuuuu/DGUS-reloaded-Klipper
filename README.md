# DGUS-reloaded-Klipper

DWIN T5UID1 touchscreen firmware for 3D printers running Klipper.

Requires using a modified version of Klipper to work properly, which can be found in [this repository](https://github.com/Desuuuu/klipper).

## Disclaimer
**This software is provided without any warranty. You are solely responsible for your use of it.**

## Features

This firmware was inspired by Creality printers' touchscreen firmware. Some features include:

* Status message available on most screens
* Z offset, manual and automatic leveling
* PID autotuning
* Volume adjustment
* Brightness adjustment
* BLTouch reset shortcut (if a BLTouch is installed)
* Playing sounds using M300 (the frequency parameter is the index of the audio file)

Focus was also put on making this firmware as easy and safe to use as possible from a user perspective.

## Compatibility
This firmware **should** be compatible with printers equipped with the following hardware:

* 480x272 DWIN T5UID1 touchscreen
* Single extruder
* Heated bed
* *(Optional)* Single controllable fan
* *(Optional)* Bed leveling sensor (including a BLTouch)

It **could** also work on machines equipped with more hardware (dual extruder, etc.) but will lack on-screen controls for such hardware.

Testing has been done on the following machines:

* Creality CR-10S Pro

## Prerequisites
You have to use this [modified version of Klipper](https://github.com/Desuuuu/klipper). Make sure to enable the serial connection to the screen while configuring the MCU firmware.

The only modification required to your Klipper configuration file is to add this section:
```
[t5uid1]
firmware: dgus_reloaded
```

For a list of available options, see the [sample-t5uid1.cfg](https://github.com/Desuuuu/klipper/blob/master/config/sample-t5uid1.cfg) file.

It is also a good idea to add this command to your start G-code:
```
DGUS_PRINT_START
```
And this command to your end G-code:
```
DGUS_PRINT_END
```

Example Klipper configurations are available in [this repository](https://github.com/Desuuuu/DGUS-reloaded-Klipper-config).

## Wiki
* [Flashing the firmware](https://github.com/Desuuuu/DGUS-reloaded-Klipper/wiki/Flashing-the-firmware)
* [Print progress display](https://github.com/Desuuuu/DGUS-reloaded-Klipper/wiki/Print-progress-display)

## Modification / Compilation
You can make modifications to the firmware by opening the `DWprj.hmi` file in **DGUS Tools**.

After finishing your modifications, you will need to press the *Generate* button to create the 3 required binary files.

You can then run the rename script and flash your touchscreen using the resulting `DWIN_SET` folder.

## Credits
| Material                                                                       | Author                                                    | Modified | License                                                               |
|:------------------------------------------------------------------------------:|:---------------------------------------------------------:|:--------:|:---------------------------------------------------------------------:|
| [Klipper logo](https://github.com/KevinOConnor/klipper)                        | [KevinOConnor](https://github.com/KevinOConnor)           | Yes      | [GPLv3](http://www.gnu.org/licenses/gpl-3.0.html)                     |
| [Feather icons](https://feathericons.com/)                                     | [Cole Bemis](https://twitter.com/colebemis)               | Yes      | [MIT](https://github.com/feathericons/feather/blob/master/LICENSE)    |
| [3D Printing Line icons](https://www.iconfinder.com/iconsets/3d-printing-line) | [Sam Baines](https://www.iconfinder.com/conceptbaines)    | Yes      | [CC-BY 3.0](https://creativecommons.org/licenses/by/3.0/legalcode)    |
| [Fan icon](https://thenounproject.com/term/fan/1153915/)                       | [Atif Arshad](https://thenounproject.com/atifarshad/)     | Yes      | [CC-BY 3.0](https://creativecommons.org/licenses/by/3.0/us/legalcode) |
| [Snow icon](https://thenounproject.com/term/snow/1959859/)                     | [Shashank Singh](https://thenounproject.com/rshashank19/) | Yes      | [CC-BY 3.0](https://creativecommons.org/licenses/by/3.0/us/legalcode) |
| [Electric Motor icon](https://thenounproject.com/term/electric-motor/2734486/) | [Verry](https://thenounproject.com/verry.dsign.creative)  | Yes      | [CC-BY 3.0](https://creativecommons.org/licenses/by/3.0/us/legalcode) |
| [Probe icon](https://thenounproject.com/term/probe/1841345/)                   | [Mohamed Mbarki](https://thenounproject.com/mb.icons)     | Yes      | [CC-BY 3.0](https://creativecommons.org/licenses/by/3.0/us/legalcode) |
| [Wheel icon](https://thenounproject.com/term/wheel/92430/)                     | [Deivid Sáenz](https://thenounproject.com/deivid.saenz)   | Yes      | [CC-BY 3.0](https://creativecommons.org/licenses/by/3.0/us/legalcode) |
| [Ruler icon](https://thenounproject.com/term/ruler/1738925/)                   | [Three Six Five](https://thenounproject.com/365)          | -        | [CC-BY 3.0](https://creativecommons.org/licenses/by/3.0/us/legalcode) |

## License
[GPLv3](http://www.gnu.org/licenses/gpl-3.0.html)
