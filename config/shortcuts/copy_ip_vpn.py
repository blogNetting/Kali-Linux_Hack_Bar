#!/usr/bin/python3
# -*- coding: utf-8 -*-

# Dependencias:
# pip install pyperclip

import pyperclip

TARGET_FILE_PATH = "/home/kali/.config/panels/ip_vpn"


with open(TARGET_FILE_PATH) as f:
    ip_vpn = f.readline().split("\n")[0]
    # print(ip_vpn)
    pyperclip.copy(ip_vpn)
    spam = pyperclip.paste()
