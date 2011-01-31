#!/bin/bash
# Author: Seth Chisamore <schisamo@opscode.com>
instance="${USER}-vagrant"
vagrant destroy
knife client delete $instance -y
knife node delete $instance -y
