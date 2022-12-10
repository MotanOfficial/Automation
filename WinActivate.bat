@ECHO OFF

cmd /c slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX

timeout /t 8 /nobreak

cmd /c slmgr /skms kms.xspace.in

timeout /t 8 /nobreak

cmd /c slmgr /ato

timeout /t 8 /nobreak

EXIT