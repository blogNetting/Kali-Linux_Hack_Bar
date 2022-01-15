#!/usr/bin/python3
# -*- coding: utf-8 -*-

# Dependencias:
# pip install pyperclip

import pyperclip

TARGET_FILE_PATH = "/home/kali/.config/panels/domain_target"


with open(TARGET_FILE_PATH) as f:
    domain_target = f.readline().strip()
    # print(ip_target)
    pyperclip.copy(domain_target)
    spam = pyperclip.paste()
