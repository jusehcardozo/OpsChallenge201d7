$Begin = Get-Date -Date '11/16/2022 09:00:00'
$End = Get-Date -Date '11/17/2022 09:00:00'
Get-EventLog -LogName System -EntryType Error -After $Begin -Before $End >C:\Users\juseh\Desktop\last24.txt

Get-EventLog -LogName System -EntryType Error >C:\Users\juseh\Desktop\errors.txt

Get-EventLog -LogName Application -Source Outlook | Where-Object {$_.EventID -eq 16} |
              Select-Object -Property Source, EventID, InstanceId, Message

Count Name                     
----- ----                     
    7 Microsoft-Windows-Kern...
    3 Microsoft-Windows-Time...
    2 Service Control Manager  
    1 Server                   
    1 Microsoft-Windows-Powe...
    1 BTHUSB                   
    1 Microsoft-Windows-Kern...

Get-EventLog -LogName System -Newest 20


PS C:\WINDOWS\system32> $Events = Get-EventLog -LogName System -Newest 500
$Events | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending

Count Name                     
----- ----                     
  110 Service Control Manager  
   71 Microsoft-Windows-Kern
   67 Microsoft-Windows-Kern
   48 Microsoft-Windows-Wind
   39 Microsoft-Windows-Hype
   29 DCOM                     
   16 Microsoft-Windows-Time
   13 Microsoft-Windows-Filt
   13 McAfee Service Controller
    9 BTHUSB                   
    8 Server                   
    8 Microsoft-Windows-Powe
    8 Microsoft-Windows-Kern
    8 Microsoft-Windows-Kern
    7 Microsoft-Windows-Dhcp
    7 EventLog                 
    5 Microsoft-Windows-Isol
    5 Microsoft-Windows-Hype
    4 Microsoft-Windows-DHCP
    3 Microsoft-Windows-Kern
    3 Microsoft-Windows-Dire
    2 Microsoft-Windows-Wininit
    2 Microsoft-Windows-WLAN
    2 Win32k                   
    2 Microsoft-Windows-Winl
    2 Microsoft-Windows-TPM-WMI
    2 Microsoft-Windows-User
    1 TPM                      
    1 Microsoft-Windows-Driv
    1 Microsoft-Windows-Ntfs   
    1 hpdskflt                 
    1 Microsoft-Windows-HAL    
    1 Tcpip                    
    1 User3
