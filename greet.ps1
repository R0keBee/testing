Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.MessageBox]::Show("idiot!", "Greeting")
# Set the path to the script or executable
$scriptPath = "C:\Users\YourUserName\Documents\myscript.ps1"

# Set a name for the registry entry
$regName = "MyPersistentScript"

# Add to HKCU Run key
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" `
                 -Name $regName `
                 -Value "powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -File `"$scriptPath`"" `
                 -PropertyType String
