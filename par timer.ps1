#Beep(Beep Tone, Beep length in ms) max 500 is good for short, 1000 is for long. 
$Delay = Get-Random -Minimum 5.0 -Maximum 6.5
$ParTime = 2
While($True){
$Response = [System.Windows.MessageBox]::Show('Run Par Timer?','Par Timer','YesNo','Asterisk')
    if($Response -eq 'No'){
        Break
    }
    Start-Sleep -seconds $Delay
    [Console]::Beep(1000, 300)
    Start-Sleep -seconds $ParTime
    [Console]::Beep(1000, 1000)
}
