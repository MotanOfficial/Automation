@ECHO OFF

set pth=%cd%

IF EXIST %pth%\SFP\SFP_UI.exe (
	start /b /d "%pth%\SFP\" SFP_UI.exe

	timeout /t 15 /nobreak

	taskkill /im "SFP_UI.exe" /f

	xcopy /s "%pth%\Theme\config.css" "C:\Program Files (x86)\Steam\steamui" /Y

	xcopy /s "%pth%\Theme\libraryroot.custom.css" "C:\Program Files (x86)\Steam\steamui" /Y

	xcopy /s "%pth%\Theme\steam.styles" "C:\Program Files (x86)\Steam\resource\styles" /Y

	taskkill /im "steam.exe" /f

	timeout /t 2 /nobreak

	start /b /d "C:\Program Files (x86)\Steam\" steam.exe -norepairfiles -noverifyfiles

	EXIT

) else (
	EXIT
)