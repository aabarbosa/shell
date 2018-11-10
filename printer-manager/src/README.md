## Simple printer manager

Easily limit pages and toner use in a Printer Device

### How to generate jobs

xf@xf:~/printer-manager/src$ echo new job 1024 b>> log

xf@xf:~/printer-manager/src$ echo Printer is turned on! >> log


#### Behaviors

1. Monthly log (number of printed pages and # of files)
2. Users can only use a total of 204800 bytes
3. New monthly cote is 204800 bytes for each user. 
4. Consider a previous limit above 204800 and update the new monthly cote 
5. The system provides parameters User information
