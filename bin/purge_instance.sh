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
# if [[ $1 == '' ]]
# then
#   echo -n "Instance ID: "
#   read instance
# else
#   instance=$1
# fi
# knife client delete $instance -y
# knife node delete $instance -y
# knife ec2 server delete $instance
# if [ $? != 0 ]; then
#   knife rackspace server delete $instance
# fi
# if [ $? != 0 ]; then
#   knife euca server delete $instance
# fi
if [[ $1 == '' ]]
then
  echo -n "Instance ID: "
  read instance
else
  instance=$1
fi
instance_ids=($instance)
for id in ${instance_ids[@]}
do
  knife client delete $id -y
  knife node delete $id -y
  knife ec2 server delete $id
  if [ $? != 0 ]; then
    knife rackspace server delete $id
  fi
  if [ $? != 0 ]; then
    knife euca server delete $id
  fi
done
