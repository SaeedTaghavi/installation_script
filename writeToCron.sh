#!/bin/bash

line="* * * * * /path/to/command"
(crontab -u userhere -l; echo "$line" ) | crontab -u userhere -
