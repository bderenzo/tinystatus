#!/bin/bash
timestamp=`date +%Y/%m/%d-%H:%M:%S`
echo "Crond run at $timestamp"
tinystatus /tinystatus/checks.csv /tinystatus/incidents.txt > /www/index.html
