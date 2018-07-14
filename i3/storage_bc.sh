#!/bin/bash

sda1=$(df -m | grep -m 1 'sda1' | awk '{print $3}')
sda2=$(df -m | grep -m 1 'sda2' | awk '{print $3}')
echo "$sda1 + $sda2" | bc
