#RequireAdmin
#include<Timers.au3>
install_pycrypto()
Func install_pycrypto()
	ShellExecute ( ".\pycrypto-2.6.win32-py2.7.exe")
	Do 
		Sleep(1000)
	Until (WinExists("Setup pycrypto-2.6") And WinExists("Setup"))
	ControlClick("Setup","",12324,"left")
	Sleep(500)
	ControlClick("Setup","",12324,"left")
	Sleep(500)
	ControlClick("Setup","",12324,"left")
	Do
		Sleep(500)
	Until ControlCommand("Setup","",12325,"IsEnabled")
	Sleep(500)
	ControlClick("Setup","",12325,"left")
EndFunc