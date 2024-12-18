$trigger = New-ScheduledTaskTrigger -AtStartup
$action = New-ScheduledTaskAction -Execute "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -Argument "-File C:\DockerData\startDocker.ps1"
$settings = New-ScheduledTaskSettingsSet -Compatibility Win8 -AllowStartIfOnBatteries
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Start Docker on Startup" -Settings $settings -User "USER" -Password "PASSWORD" -RunLevel Highest

# Add the user to the docker-users user-group
# This is needed so that this user has access to docker services
try {
	Add-LocalGroupMember -Group docker-users -Member "dionysios" -ErrorAction Stop
} catch [Microsoft.PowerShell.Commands.MemberExistsException] {
}

