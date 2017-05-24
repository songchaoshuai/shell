#!/bin/sh
set -x
mailSend()
{
 mailContent="xxxx Web response time over 5 seconds"
 echo $mailContent | mail -s "xxxxxx Web TimeOut" chaoshuaix.song@intel.com
}
timeout()
{
waitfor=$1
shift
command=$*
$command &
commandpid=$!

( sleep $waitfor ; kill -9 $commandpid  > /dev/null 2>&1 && mailSend ) &

watchdog=$!
sleeppid=$PPID
wait $commandpid > /dev/null 2>&1

kill $sleeppid > /dev/null 2>&1
return 0
}

#test function

test123()
{
  echo $*
  shift
  echo $*
  sleep 10
}

timeout 30 test123   123 45
