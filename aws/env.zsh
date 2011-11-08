#export LATEST_LUCID=$(ruby -e 'require "ubuntu_ami";puts UbuntuAmi.new("lucid").run["us_east_small"]')
export EC2_HOME="`brew --prefix ec2-api-tools`/jars"
export AWS_RDS_HOME="`brew --prefix rds-command-line-tools`/jars"

export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
# export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.4.2.2/jars"