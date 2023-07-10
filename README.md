# LM SENSORS PLOT

NOTICE: You must have the `lm-sensors` package (name from Debian-like repository) to be able to plot the core temperature data.

1. Make the files `file_headerl.pl`, `filter_values.pl` and `start_records.sh` executable.

2. Run `./start_records.hs`

The data is throwed in a format suitable to a csv format. You can redirect the results to a csv file to be opened afterwards in a datasheet editor. Then, once opened inside your datasheed editor, easily can plot a graphic to check how was the temperature from your system cores.

NOTE FOR REGIONS WHERE DECIMALS ARE COMMA: The script also checks a system variable called `LM_SENSOR_PLOT_COMMA`. If found, and it is setted to 1, then the output replaces the dot with a comma, do not confusing the spreadsheed editor which eventually is seted up to the local number format (with comma);
