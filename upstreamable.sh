#!/bin/bash
#This is a bash script for uploading video to https://streamable.com/
#version 0.1
#author sakuranao
#last update 20150920

#your account information for using the official api
auth=

#different option
url1=https://api.streamable.com/upload
url2=https://api.streamable.com/upload?noresize
url3=https://api.streamable.com/upload?mute

#get the file going to be uploaded
echo 'Enter the File''s Address you want to upload:'
read fileAdd
#get the user's choice
echo 'Default(d)? Noresize(n)? Mute(m)? Enter one character:'
read choice
de=d
no=n
mu=m
url=

#set the condition flow

if [ $choice = $de ];then
	url=$url1
elif [ $choice = $no ]; then
	url=$url2
elif [ $choice = $mu ]; then
	url=$url3 
else
	echo 'Sorry, No This Choice.'
fi

#run the command to upload
curl -F file=@$fileAdd -u $auth $url
