Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.MessageBox]::Show("idiot!", "Greeting")
# Set the path to the script or executable
#$regName = "Personal use"
#$scriptPath = "$env:USERPROFILE\Desktop\greet.ps1"

#New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" `
                 #-Name $regName `
                 #-Value "powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -File `"$scriptPath`"" `
                # -PropertyType String -Force

