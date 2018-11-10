tail -f ./log | \
awk '/Printer is turned on!/ { system("echo You just can\'t.") }
                                  /new USB high speed/ { system("echo New USB")}'