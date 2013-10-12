#!/usr/bin/python
import subprocess

f = open('stt.txt','r')
s = f.read()
if 'stop' in s:
	subprocess.call("./stop.sh", shell=True)
elif 'start' in s: 
	subprocess.call("./start.sh", shell=True)
