#!/bin/bash
# Author: Joshua Timberman <joshua@opscode.com>
#################################################################
#
# THIS SCRIPT IS DESTRUCTIVE!
#
# It will terminate EC2 instances and delete data from a Chef
# server. It assumes a lot, doesn't do any error checking, and
# you should only use it if you understand the commands it runs.
#
################################################################
if [[ $1 == '' ]]
then
  echo -n "Instance ID: "
  read instance
else
  instance=$1
fi
knife client delete $instance -y
knife node delete $instance -y
knife ec2 server delete $instance
