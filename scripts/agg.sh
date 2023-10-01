#!/usr/bin/env bash
date=$(date "+%Y-%m-%d")

c=$(curl -s -d "bookId=408586" https://bookapi.zongheng.com/api/chapter/getChapterList \
| jq '.result.chapterList[-1].chapterViewList[].createTime | split(" ")[0]')

n=$(echo "$c" | grep -o "$date" | wc -l)
printf '{"text": "%s", "alt": "%s", "tooltip": "%s chapters", "class": "green"}' "$n" "$n" "$n" 

