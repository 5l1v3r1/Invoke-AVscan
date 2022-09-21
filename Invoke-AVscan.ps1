$AVServices = "WinDefend", "TMBMSRV", "AntivirService", "Avira.ServiceHost", "VSSERV", "AVP*", "AVG Antivirus", "Norton Security", "McAPExe", "Mfemms", "PavPrSvr", "Avast Antivirus"

Function Invoke-AVscan{
    try
    {
        foreach($service in $AVServices)
        {
            $result = Get-Service $service -erroraction 'silentlycontinue'
            if($result -ne $null)
            {
                write-host "[+] AV Found =" $result 
            }
        }
    } catch {
        write-warning "Something went wrong!"
        Exit
    }
}