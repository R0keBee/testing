Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.MessageBox]::Show("idiot!", "Greeting")

regkey='HKCU:\Control Panel\Desktop\NewKey'
$regparam='testparameter'
if (Get-ItemProperty -Path $regkey -Name $regparam -ErrorAction Ignore)
{ write-host 'The registry entry already exist' }
else
{ New-ItemProperty -Path $regkey -Name $regparam -Value ”woshub_test”  -PropertyType "String"  }
