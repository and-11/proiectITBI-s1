#!/bin/bash

my_pid=$$; want="chmod"
pth="/tmp/server-replies/$my_pid"; mkfifo $pth


read want

echo "BEGIN-REQ $my_pid: $want END-REQ"

echo "$my_pid $want" >> $wkFIFO
cat $pth; rm $pth;

# exit 0