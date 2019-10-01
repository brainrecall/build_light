EESchema Schematic File Version 4
LIBS:build_light-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "build_light"
Date "2019-09-24"
Rev "1"
Comp "Brain_ReCall, Inc."
Comment1 "GPLv3"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5D7CD10A
P 6500 4150
F 0 "A1" H 6500 5331 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 6500 5240 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 6650 3100 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 6300 5200 50  0001 C CNN
	1    6500 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D7CE9A0
P 6500 5400
F 0 "#PWR07" H 6500 5150 50  0001 C CNN
F 1 "GND" H 6505 5227 50  0000 C CNN
F 2 "" H 6500 5400 50  0001 C CNN
F 3 "" H 6500 5400 50  0001 C CNN
	1    6500 5400
	1    0    0    -1  
$EndComp
$Comp
L light_tower:TOWER U1
U 1 1 5D7CFFD9
P 3800 3750
F 0 "U1" H 3717 3815 50  0000 C CNN
F 1 "TOWER" H 3717 3724 50  0000 C CNN
F 2 "" H 3800 3750 50  0001 C CNN
F 3 "" H 3800 3750 50  0001 C CNN
	1    3800 3750
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5D7D1930
P 5050 3100
F 0 "Q1" H 5241 3146 50  0000 L CNN
F 1 "2N3904" H 5241 3055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5250 3025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5050 3100 50  0001 L CNN
	1    5050 3100
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5D7D2E70
P 5050 3800
F 0 "Q2" H 5241 3846 50  0000 L CNN
F 1 "2N3904" H 5241 3755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5250 3725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5050 3800 50  0001 L CNN
	1    5050 3800
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 5D7D3312
P 5050 4500
F 0 "Q3" H 5241 4546 50  0000 L CNN
F 1 "2N3904" H 5241 4455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5250 4425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5050 4500 50  0001 L CNN
	1    5050 4500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D7D45E7
P 4950 4750
F 0 "#PWR04" H 4950 4500 50  0001 C CNN
F 1 "GND" H 4955 4577 50  0000 C CNN
F 2 "" H 4950 4750 50  0001 C CNN
F 3 "" H 4950 4750 50  0001 C CNN
	1    4950 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D7D5BBE
P 4950 4050
F 0 "#PWR03" H 4950 3800 50  0001 C CNN
F 1 "GND" H 4955 3877 50  0000 C CNN
F 2 "" H 4950 4050 50  0001 C CNN
F 3 "" H 4950 4050 50  0001 C CNN
	1    4950 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D7D621D
P 4950 3350
F 0 "#PWR02" H 4950 3100 50  0001 C CNN
F 1 "GND" H 4955 3177 50  0000 C CNN
F 2 "" H 4950 3350 50  0001 C CNN
F 3 "" H 4950 3350 50  0001 C CNN
	1    4950 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D7D6AAC
P 5450 3100
F 0 "R1" V 5657 3100 50  0000 C CNN
F 1 "220" V 5566 3100 50  0000 C CNN
F 2 "" V 5380 3100 50  0001 C CNN
F 3 "~" H 5450 3100 50  0001 C CNN
	1    5450 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D7D7550
P 5450 3800
F 0 "R2" V 5657 3800 50  0000 C CNN
F 1 "220" V 5566 3800 50  0000 C CNN
F 2 "" V 5380 3800 50  0001 C CNN
F 3 "~" H 5450 3800 50  0001 C CNN
	1    5450 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D7D769B
P 5450 4500
F 0 "R3" V 5657 4500 50  0000 C CNN
F 1 "220" V 5566 4500 50  0000 C CNN
F 2 "" V 5380 4500 50  0001 C CNN
F 3 "~" H 5450 4500 50  0001 C CNN
	1    5450 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 3300 4950 3350
Wire Wire Line
	4950 4000 4950 4050
Wire Wire Line
	4950 4700 4950 4750
Wire Wire Line
	5250 4500 5300 4500
Wire Wire Line
	5250 3800 5300 3800
Wire Wire Line
	5250 3100 5300 3100
Wire Wire Line
	4950 3600 4550 3600
Wire Wire Line
	4550 3600 4550 4150
Wire Wire Line
	4550 4150 4200 4150
Wire Wire Line
	4950 4300 4550 4300
Wire Wire Line
	4550 4300 4550 4250
Wire Wire Line
	4550 4250 4200 4250
Wire Wire Line
	4950 2900 4500 2900
Wire Wire Line
	4500 2900 4500 4050
Wire Wire Line
	4500 4050 4200 4050
Wire Wire Line
	6500 5350 6500 5400
Wire Wire Line
	6500 5250 6500 5350
Connection ~ 6500 5350
Wire Wire Line
	6600 5250 6600 5350
Wire Wire Line
	6600 5350 6500 5350
Wire Wire Line
	5600 4500 5850 4500
Wire Wire Line
	5850 4500 5850 3950
Wire Wire Line
	5850 3950 6000 3950
Wire Wire Line
	5600 3800 5800 3800
Wire Wire Line
	5800 4050 6000 4050
Wire Wire Line
	5800 3800 5800 4050
Wire Wire Line
	5600 3100 5750 3100
Wire Wire Line
	5750 3100 5750 4150
Wire Wire Line
	5750 4150 6000 4150
$Comp
L Device:Jumper JP1
U 1 1 5D7E10D1
P 7400 3550
F 0 "JP1" H 7400 3814 50  0000 C CNN
F 1 "Jumper" H 7400 3723 50  0000 C CNN
F 2 "" H 7400 3550 50  0001 C CNN
F 3 "~" H 7400 3550 50  0001 C CNN
	1    7400 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D7E1904
P 7700 3800
F 0 "C1" H 7815 3846 50  0000 L CNN
F 1 "10uF" H 7815 3755 50  0000 L CNN
F 2 "" H 7738 3650 50  0001 C CNN
F 3 "~" H 7700 3800 50  0001 C CNN
	1    7700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3550 7100 3550
Wire Wire Line
	7700 3550 7700 3650
Wire Wire Line
	7700 3950 7700 5350
Wire Wire Line
	7700 5350 6600 5350
Connection ~ 6600 5350
$Comp
L light_tower:buck_boost U?
U 1 1 5D92E78D
P 6300 1900
F 0 "U?" H 6500 1965 50  0000 C CNN
F 1 "buck_boost" H 6500 1874 50  0000 C CNN
F 2 "" H 6300 1900 50  0001 C CNN
F 3 "" H 6300 1900 50  0001 C CNN
	1    6300 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D92F05E
P 7100 2550
F 0 "#PWR?" H 7100 2300 50  0001 C CNN
F 1 "GND" H 7105 2377 50  0000 C CNN
F 2 "" H 7100 2550 50  0001 C CNN
F 3 "" H 7100 2550 50  0001 C CNN
	1    7100 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2300 5900 2500
Wire Wire Line
	5900 2500 7100 2500
Wire Wire Line
	7100 2500 7100 2300
Wire Wire Line
	7100 2500 7100 2550
Connection ~ 7100 2500
Wire Wire Line
	6700 3150 6700 2750
Wire Wire Line
	6700 2750 5750 2750
Wire Wire Line
	5750 2750 5750 2100
Wire Wire Line
	5750 2100 5900 2100
Wire Wire Line
	7100 2100 7100 1750
Wire Wire Line
	7100 1750 4200 1750
Wire Wire Line
	4200 1750 4200 3950
$EndSCHEMATC
