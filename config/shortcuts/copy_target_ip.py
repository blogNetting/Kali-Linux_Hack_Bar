#!/usr/bin/python3
# -*- coding: utf-8 -*-

# Dependencias:
# pip install pyperclip

import pyperclip

TARGET_FILE_PATH = "/home/kali/.config/panels/target"


with open(TARGET_FILE_PATH) as f:
    ip_target = f.readline().split(" ")[0]
    # print(ip_target)
    pyperclip.copy(ip_target)
    spam = pyperclip.paste()
    
with open("prueba.txt", "w") as f:
    f.write("asdsa")

    
