#!/bin/bash
clear
import os
import time
import sys
import random
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from halo import Halo

spinner = Halo(text='Downloading dataset.zip', spinner='dots')

try:
    spinner.start()
    for i in range(100):
        spinner.text = '{}% Downloaded dataset.zip'.format(i)
        time.sleep(random.random())
    spinner.succeed('Downloaded dataset.zip')
except (KeyboardInterrupt, SystemExit):
    spinner.stop()
echo "===================="
echo "|    How are you?  |"
echo "|======Select======|"
echo "|    1. Termux     |"
echo "|    2. Unix       |"
echo "|                  |"
echo "| Введите 1 или 2: |"
echo "===================="
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pkg install dos2unix
	pip3 install requests
	pip3 install colorama
	cp ~/spymer/spammer.py /data/data/com.termux/files/usr/bin/spymer
	dos2unix /data/data/com.termux/files/usr/bin/spymer
	chmod 777 /data/data/com.termux/files/usr/bin/spymer
	spymer
else
	if [ $numb = "2" ]
	then

		if [ "$(whoami)" != 'root' ]; then
			echo "You are not rooted. Start install.sh with root acces Example:
            (sudo sh ~/spymer/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/spymer/spammer.py /usr/bin/spymer
			dos2unix /usr/bin/spymer
			chmod 777 /usr/bin/spymer
			spymer
		fi
	else
		echo "Incorrect try again....going to succes :)"
	fi
fi