#!/bin/bash

declare -a array1=("1"
"2"
"3"
"4")

declare -a array2=("a"
"b"
"c"
"d")

for domain in "${!array1[@]}"
do
#     cat 1>&2 <<EOF
#echo $domain ${array1[domain]} ${array2[domain]}


# EOF
cat >> rv.txt <<EOF
{
    "headers": [
        {
            "key": "X-RID",
            "value": "{{.RId}}"
        }
    ],
    "name": "AWS",
    "interface_type": "SMTP",
    "from_address": "${array1[domain]}",
    "host": "smtp.example.com:587",
    "username": "${array2[domain]}",
    "password": "password"
}
EOF
done
