Pi-FM
=====

Use your pi to stream music online and fm too!

What do you need?
 
1. a raspberry pi connected to internet 
2. icecast2 installed
2. (optional) a microphone connected to the pi(Sing Star microphone from PS3 
work, tested with the blue one)


What do you have to do?

Clone the code and copy and put it on your pi. Change the ips in the scripts
with the correct one for your Raspberry Pi.  Then select the music on your 
computer in a player that can stream (for example, i use Mixxx) and stream 
it to the icecast server on your raspberry pi. After you play the music from 
your player use ./vc.sh (Voice command.sh) and say "start" or "stop" to start 
or stop the streaming server.

If you don't want to use voice command you can just run the scripts start or
stop. 

