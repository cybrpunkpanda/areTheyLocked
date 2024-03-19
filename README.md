# areTheyLocked #

Checks to see if a specific user is locked. Primarily used to track down the persistent lockout of user accounts associated with login attempts whose accounts were on multiple devices.

## Usage ##

Modify the PowerShell file to reflect your org's domain and information then allow the script to run while looking for lockouts associated with login attempts.

__NOTE: This has not been tested on environments using cloud-based Active Directory setups. Script is many years old__
