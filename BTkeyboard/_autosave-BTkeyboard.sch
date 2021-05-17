EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ESP32-DEVKITC-32D:ESP32-DEVKITC-32D U?
U 1 1 60A13E80
P 4900 3300
F 0 "U?" H 4900 4467 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 4900 4376 50  0000 C CNN
F 2 "MODULE_ESP32-DEVKITC-32D" H 4900 3300 50  0001 L BNN
F 3 "" H 4900 3300 50  0001 L BNN
F 4 "Espressif Systems" H 4900 3300 50  0001 L BNN "MANUFACTURER"
F 5 "4" H 4900 3300 50  0001 L BNN "PARTREV"
	1    4900 3300
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60A1505E
P 7100 2500
F 0 "SW?" H 7100 2755 50  0000 C CNN
F 1 "SW_PUSH" H 7100 2664 50  0000 C CNN
F 2 "" H 7100 2500 50  0000 C CNN
F 3 "" H 7100 2500 50  0000 C CNN
	1    7100 2500
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60A1656B
P 7100 2800
F 0 "SW?" H 7100 3055 50  0000 C CNN
F 1 "SW_PUSH" H 7100 2964 50  0000 C CNN
F 2 "" H 7100 2800 50  0000 C CNN
F 3 "" H 7100 2800 50  0000 C CNN
	1    7100 2800
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60A16878
P 7100 3100
F 0 "SW?" H 7100 3355 50  0000 C CNN
F 1 "SW_PUSH" H 7100 3264 50  0000 C CNN
F 2 "" H 7100 3100 50  0000 C CNN
F 3 "" H 7100 3100 50  0000 C CNN
	1    7100 3100
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60A1B859
P 7100 3500
F 0 "SW?" H 7100 3755 50  0000 C CNN
F 1 "SW_PUSH" H 7100 3664 50  0000 C CNN
F 2 "" H 7100 3500 50  0000 C CNN
F 3 "" H 7100 3500 50  0000 C CNN
	1    7100 3500
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60A1B85F
P 7100 3800
F 0 "SW?" H 7100 4055 50  0000 C CNN
F 1 "SW_PUSH" H 7100 3964 50  0000 C CNN
F 2 "" H 7100 3800 50  0000 C CNN
F 3 "" H 7100 3800 50  0000 C CNN
	1    7100 3800
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW?
U 1 1 60A1B865
P 7100 4100
F 0 "SW?" H 7100 4355 50  0000 C CNN
F 1 "SW_PUSH" H 7100 4264 50  0000 C CNN
F 2 "" H 7100 4100 50  0000 C CNN
F 3 "" H 7100 4100 50  0000 C CNN
	1    7100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2600 6300 2600
Wire Wire Line
	6300 2600 6300 2500
Wire Wire Line
	6300 2500 6800 2500
Wire Wire Line
	6800 2800 6300 2800
Wire Wire Line
	6300 2800 6300 2900
Wire Wire Line
	6300 2900 5700 2900
Wire Wire Line
	6800 3100 5700 3100
Wire Wire Line
	6800 3500 6300 3500
Wire Wire Line
	6300 3500 6300 3200
Wire Wire Line
	6300 3200 5700 3200
Wire Wire Line
	6800 3800 6200 3800
Wire Wire Line
	6200 3800 6200 3400
Wire Wire Line
	6200 3400 5700 3400
Wire Wire Line
	6800 4100 6100 4100
Wire Wire Line
	6100 4100 6100 3500
Wire Wire Line
	6100 3500 5700 3500
$Comp
L power:GND #PWR?
U 1 1 60A263AF
P 3700 4200
F 0 "#PWR?" H 3700 3950 50  0001 C CNN
F 1 "GND" H 3705 4027 50  0000 C CNN
F 2 "" H 3700 4200 50  0001 C CNN
F 3 "" H 3700 4200 50  0001 C CNN
	1    3700 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3700 3700 3700
Wire Wire Line
	3700 3700 3700 4200
$Comp
L power:+3.3V #PWR?
U 1 1 60A2AFAF
P 3700 2250
F 0 "#PWR?" H 3700 2100 50  0001 C CNN
F 1 "+3.3V" H 3715 2423 50  0000 C CNN
F 2 "" H 3700 2250 50  0001 C CNN
F 3 "" H 3700 2250 50  0001 C CNN
	1    3700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2250 3700 2400
Wire Wire Line
	3700 2400 4100 2400
Wire Wire Line
	7400 2500 7500 2500
Wire Wire Line
	7500 4100 7400 4100
Wire Wire Line
	7400 3800 7500 3800
Connection ~ 7500 3800
Wire Wire Line
	7500 3800 7500 4100
Wire Wire Line
	7400 3500 7500 3500
Connection ~ 7500 3500
Wire Wire Line
	7500 3500 7500 3800
Wire Wire Line
	7400 3100 7500 3100
Connection ~ 7500 3100
Wire Wire Line
	7500 3100 7500 3500
Wire Wire Line
	7400 2800 7500 2800
Wire Wire Line
	7500 2500 7500 2800
Connection ~ 7500 2800
Wire Wire Line
	7500 2800 7500 3100
$Comp
L power:GND #PWR?
U 1 1 60A2E796
P 7500 4250
F 0 "#PWR?" H 7500 4000 50  0001 C CNN
F 1 "GND" H 7505 4077 50  0000 C CNN
F 2 "" H 7500 4250 50  0001 C CNN
F 3 "" H 7500 4250 50  0001 C CNN
	1    7500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4250 7500 4100
Connection ~ 7500 4100
$EndSCHEMATC