## Simple printer manager

Easily limit pages and toner use in a Printer Device


#### Behaviors

1. Each month a log is generated with page # and files printed
2. Users can set a monthly quote of page limit
3. This new monthly quote consider a plus of the limit of pages. 
4. Use above limit is discounted in the next month 
5. The system provides parameters for the user information

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