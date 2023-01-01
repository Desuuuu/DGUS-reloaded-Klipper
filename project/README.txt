This folder contains all of the files required to use the Desuuuu DGUS-Reloaded system on a CR6-SE printer.


	The DWIN_SET folder can be flashed to the display, as-is.  That will upload the TFT UI to the DWIN display.

	Copy the file klipper_repos.txt to ./kiauh/ (after installing kiauh and before trying to install klipper), to enable kiauh to select the modified klipper repo as the klipper source.  Then change the klipper repo in Kiauh to the Desuuu/Klipper,dgus-reloaded option.

	Use KIAUH (https://github.com/th33xitus/kiauh) to install Klipper from the Desuuuu/Klipper repository, dgus-reloaded branch.

AFTER installing  DGUS-reloaded Klipper, from the dgus-reloaded branch of this repo: https://github.com/Desuuuu/klipper:
	1. Use the file pages.cfg to overwrite the file with that name in ./klipper/klippy/extras/t5uid1
	2. Use the file pages.vars_in.cfg to overwrite the file with that name in ./klipper/klippy/extras/t5uid1
	2. Edit the file _init_.py to define the three material presets to your taste for default PLA, ABS and PETG pre-heat temperatures
	2. Use the edited _init_.py file to overwrite the file with that name in ./klipper/klippy/extras/t5uid1/dgus-reloaded

	Use the modified Klipper to make menuconfig and then make a new Klipper.bin file for the motherboard in your printer.
	Download that klipper.bin file, rename it to firmware.bin (for BTT SKR CR6 board) or DesuuuuKlipper.bin (for Creality boards).

REMEMBER: If you need to flash the motherboard more than once:
	- The file must always be named firmware.bin, for the BTT board
	- The file must be named something new, each time, for the Creality boards.

	Edit your Printer.cfg file, per your particular printer motherboard and Klipper configuration requirements.

	Either Include t5uid1.cfg or paste the contents into printer.cfg to create a [t5uid1] section.  Edit those settings to your taste.

	Consider modifying your slicer of choice, to embed M117 messages in the gcode, to report current layer # vs max layer # and Time remaining.


Known Issues with this version:

https://github.com/Desuuuu/klipper/issues/135
 - Enable/Disable Steppers is not working

https://github.com/Desuuuu/klipper/issues/134
 - First Homing after power-up causes SHUTDOWN  

https://github.com/Desuuuu/klipper/issues/136
 - "Abort Print" does not also park the head.

https://github.com/Desuuuu/klipper/issues/137
 - No support for M112 Emergency Shutdown from the UI

Elapsed Print Time does not display correctly on Print Status or Print Finished.
 - Have removed that data from both screens.  Recommend using the Cura M117 scripts, per the enclosed graphic

Last commanded Z position does not display correctly on Print Status or Print Finished screens.
 - See no value in that display, anyway.  Have removed it from both screens.