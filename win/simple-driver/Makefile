build:
	cl /c driver.c /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.22621.0\km"
	link driver.obj "C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\km\x64\ntoskrnl.lib" /subsystem:native /driver:wdm -entry:DriverEntry

load:
	# First run the "sc create" and adjust the path to where the sys file is
	# sc create nirsDriver binPath= C:\..\.sys type= kernel
	sc start nirsDriver

delete:
	sc delete nirsDriver
