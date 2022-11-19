Jose Cardozo
11/18/2022

(Get-Counter '\Process(*)\% Processor Time').CounterSamples | Where-Object {$_.CookedValue -gt 100}

I found the code for Ubuntu but not for Windows. For Ubuntu it would be the code "top"  (without the quotation marks)

Get-Process | Select-Object -First 5

$ie = Start-Process -file iexplore -arg 'https://owasp.org/www-project-top-ten/'

$urls = @("https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/")

foreach($url in $urls){
    # Start-Process "C:\Program Files (x86)\Internet Explorer\iexplore.exe" $url
    Start-Process iexplore.exe $urls
}

$urls = @("https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/","https://owasp.org/www-project-top-ten/")

foreach($url in $urls){
    # Start-Process "C:\Program Files (x86)\Internet Explorer\iexplore.exe" $url
    Start-Process iexplore.exe $urls
} 
-PassThru
sleep 5
$ie.Kill()

taskkill /F /PID 4144
