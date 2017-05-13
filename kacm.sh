#!/usr/bin/env bash

BOLD=$(tput bold)
NORMAL=$(tput sgr0)
KACM="الكوكب المراكشي"

URL="https://www.elbotola.com/analytics/team/3468/"
webpage_content=$(curl -sS "${URL}")

imta-la3bin(){
	date=$(echo "${webpage_content}"|grep "schedule__group__match" -A2|
	grep "timezone time" -m 1| sed -e "s/.*data-value=//g" -e "s/\"//g" -e "s/>.*$//g")
	echo "${BOLD}${date}${NORMAL}"
}

# FIX: output format: unreadable.
m3amen-la3bin(){
	lfer9a=$(echo "${webpage_content}"|grep "schedule__group__match" -A20|
	grep "timezone time" -A20 -m1| grep -A5 "/analytics/team/"|
	grep "title=\".*"|grep -v "$KACM"|sed -e "s/\"//g" -e "s/.*title=//g" -e "s/>//g")
	echo "${BOLD}${lfer9a}${NORMAL}"
}

ch7al-mclassyin(){
	classement=$(echo "${webpage_content}"| grep -A5 "class=\"data my-team\""|grep "rank"|
	egrep -o "[1-9]{1,2}")
	echo "${BOLD}${classement}${NORMAL}"
}

# 3tini-l3assir(){
# 
# }
