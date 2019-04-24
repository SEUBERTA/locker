**Usage**
#sequence
1. check-for-lock.sh
<br>checks, whether the stored timestamp in file filename.txt is older then 6 minutes
2. lock.sh
<br> "locks" the  process
<br> this means, the following is done every 5 minutes:
* the repo is set back to the "starting point" 
* the current timestamp is written to file "filename.txt"
*the change is committed with the commitmessage containing the current timestamp
*the commit is pushed

####to release the lock, the script has to be stoppped
this is done in case
* you end the script
* you close the session
