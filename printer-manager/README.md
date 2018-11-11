## Simple printer manager

Easily limit pages and toner use in a Printer Device


#### Behaviors

1. Monthly log (number of printed pages and # of files)
2. Users can only use a total of 204800 bytes
3. The new monthly cote is 204800 bytes for each user. 
4. Consider a previous limit above 204800 and update monthly cote 
5. The system provides parameters User information

#### How to run

#### Installation

Give permission for the src files to be executable.
```code
~/printer-manager/src$ chmod -R +x ./*

```
Run the @server.sh

```code
~/printer-manager/src$ ./server.sh \ or
~/printer-manager/src$ bash server.sh
```

### How to generate jobs
xf@xf:~/printer-manager/src$ echo new job 1024 b>> log

xf@xf:~/printer-manager/src$ echo Printer is turned on! >> log