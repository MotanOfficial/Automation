@ECHO OFF

taskkill /im "steam.exe" /f

timeout /t 2 /nobreak

set usr=%userprofile%

set /p "id=Enter Drive Letter That Has The Steam Installation(ex: C, D, E, F...).Dont Type Anything Else Or It Wont Work: "

del /s "%usr%\AppData\Local\Steam\htmlcache\Cache\"* /Q

del /s "%id%:\program files (x86)\steam\steamui\css\"* /Q

del /s "%id%:\program files (x86)\steam\clientui\css\"* /Q

cmd /c timeout /t 2 /nobreak

start /b /d "%id%:\Program Files (x86)\Steam\" steam.exe

EXIT