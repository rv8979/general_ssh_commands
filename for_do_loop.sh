#!/bin/bash
# List You Domain Here
DOMAINS="google.com
yahoo.com
facebook.com"
for domain in $DOMAINS
do
  echo "$domain"
  echo "-----------------------------------"
  host $domain
  echo "-----------------------------------"
echo "*************"
echo "  "
done
