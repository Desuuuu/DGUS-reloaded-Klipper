#!/bin/sh

find DWIN_SET -type f -name "13*.bin" ! -name "13_touch.bin" -exec mv {} DWIN_SET/13_touch.bin \;
find DWIN_SET -type f -name "14*.bin" ! -name "14_variable.bin" -exec mv {} DWIN_SET/14_variable.bin \;
find DWIN_SET -type f -name "22*.bin" ! -name "22_config.bin" -exec mv {} DWIN_SET/22_config.bin \;

exit 0
