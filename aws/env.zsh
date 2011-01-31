#export LATEST_LUCID=$(ruby -e 'require "ubuntu_ami";puts UbuntuAmi.new("lucid").run["us_east_small"]')
export EC2_HOME="`brew --prefix ec2-api-tools`/jars"
export AWS_RDS_HOME="`brew --prefix rds-command-line-tools`/jars"
