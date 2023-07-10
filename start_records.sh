#!/bin/bash

sensors | ./filter_header.pl
while : ; do sensors | ./filter_values.pl $LM_SENSOR_PLOT_COMMA; sleep 5; done
