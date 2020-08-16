@echo OFF

for %%f in (DWIN_SET\13*.bin) do (
	if not "%%f" == "DWIN_SET\13_touch.bin" move /y "%%f" "DWIN_SET\13_touch.bin"
)

for %%f in (DWIN_SET\14*.bin) do (
	if not "%%f" == "DWIN_SET\14_variable.bin" move /y "%%f" "DWIN_SET\14_variable.bin"
)

for %%f in (DWIN_SET\22*.bin) do (
	if not "%%f" == "DWIN_SET\22_config.bin" move /y "%%f" "DWIN_SET\22_config.bin"
)
