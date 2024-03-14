Write-host "#########################################################################"
Write-Host -BackgroundColor Red -ForegroundColor white "ULTIMATE USER UNLOCKER 9000"
write-host "#########################################################################"
Write-Host "By: Devrryn Jenkins"
Write-host "#########################################################################"

while ($true) {

Write-host -Backgroundcolor Red -Foregroundcolor White "Hello Mortal....Which feeble user are we searching for today?:"
$user = Read-Host "SAMAccountName (User Name)"

$check = search-adaccount -lockedout | select SAMAccountName

if ($check -contains "$user") {

 write-host "HAHA!!! THE USER IS INDEED BANISHED!! LETS BRING THEM BACK"

 read-host "Press enter to continue"

 Unlock-ADAccount $user
 
 } else {
 
 $loop = read-host "Hmmmmmm...Doesn't seem to be anyone here by that name. Try again? (y or n)"  
 
   if ( $loop -eq 'y') {

    $true

    } elseif ($loop -eq 'n') {

     break
    
    } 
    }
    }

Add-Type -AssemblyName PresentationFramework

$discbox = [System.Windows.MessageBox]::Show('All done. Click Ok to close out','Input','Ok')

 switch ($discbox) {

  'Ok' {

   Write-Host "All done!!"

   }
   }

   
         
