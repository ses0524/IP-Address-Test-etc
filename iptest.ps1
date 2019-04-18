$ipadd = Read-Host "Give me an ip address!"

Try { [byte[]] $ipadd.Split('.') >> $NULL
    Write-Host 'IP Address Detected'
    }
Catch { Write-Host 'Not a vailid IP!'
    Exit
    } 

Get-NetIPAddress $ipadd 
Write-Host $ipadd
