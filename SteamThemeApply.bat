@ECHO OFF

cmd /c start /b /d "C:\Users\ytmas\Desktop\Steam Patcher\" SFP_UI.exe

timeout /t 15 /nobreak

cmd /c taskkill /im "SFP_UI.exe" /f

cmd /c xcopy /s "D:\start\config.css" "C:\Program Files (x86)\Steam\steamui" /Y

cmd /c xcopy /s "D:\start\libraryroot.custom.css" "C:\Program Files (x86)\Steam\steamui" /Y

cmd /c xcopy /s "D:\start\steam.styles" "C:\Program Files (x86)\Steam\resource\styles" /Y

cmd /c taskkill /im "steam.exe" /f

timeout /t 2 /nobreak

cmd /c start /b /d "C:\Program Files (x86)\Steam\" steam.exe -norepairfiles -noverifyfiles

PAUSE