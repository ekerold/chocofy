# ./update.ps1 lists all outdated packages and prompts you to update all of them.
# If you respond with 'y' the packages are updated.
# 
# It then calls ./record.ps1 to note down the currently installed package versions for all
# packages in packages.config.
#

# always upgrade chocolatey first
choco upgrade -y chocolatey

# list all outdated packages
choco outdated

# prompt to upgrade all listed packages
if ($(read-host "Upgrade all? (Y): ") -eq "y") { choco upgrade all -y }

./record.ps1