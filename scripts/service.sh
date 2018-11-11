state=IDLE
 ...
 while [ $state = IDLE ]
 do
   ...
   if condition
   then
     state=BUSY
   fi
   ...
   if condition2
   then
     state=ERROR
   fi
   ...
 done
 if [ $state = ERROR ]
 then
   ...
 fi