#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
os.system("rm -rf /etc/apt/sources.list")
os.system("echo deb http://http.kali.org/kali kali-rolling main non-free contrib > /etc/apt/sources.list")


os.system("gpg --keyserver hkp://keys.gnupg.net --recv-key 7D8D0BF6")
os.system("gpg --fingerprint 7D8D0BF6")
os.system("gpg -a --export 7D8D0BF6 | apt-key add -")
os.system("apt update")