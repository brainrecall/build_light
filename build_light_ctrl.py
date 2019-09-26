# build_light
# Copyright (C) 2019  Joseph Auman (joseph.auman@gmail.com)
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

import serial #pip install pyserial
import time
import sys

#This python script is intended to be run on the PC that the build_light
#is connected to. This script is intended to be run once without the need
#of a server. The Arduino will reset each time this script is ran, unless
#the reset jumper is connected on build_light.

#Usage: python build_light_srv.py COM3 asR

#fire up the serial port
ser = serial.Serial(sys.argv[1], 115200)

#when we start the serial port, the arduino is being reset
#to prevent this, connect the jumper on the board so the reset
#line is held high. Note that this will disable programming.

#wait for the arduino to reset
time.sleep(2)

#forever, just grab the data and throw it at the serial port
ser.write(sys.argv[2])
ser.flush()
ser.close()
