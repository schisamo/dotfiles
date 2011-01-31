current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                ENV['USER']
client_key               "#{ENV['HOME']}/.chef/private-pems/#{ENV['USER']}.pem"
validation_client_name   "#{ENV['USER']}-dev-validator"
validation_key           "#{ENV['HOME']}/.chef/private-pems/#{ENV['USER']}-dev-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/#{ENV['USER']}-dev"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
#cookbook_path ["/Users/#{ENV['USER']}/dev/github_#{ENV['USER']}/cookbooks"]

cookbook_copyright "Opscode, Inc."
cookbook_license "apachev2"
cookbook_email "cookbooks@opscode.com"

# all your credentials are belong to us

# Amazon AWS
knife[:aws_access_key_id] = "#{ENV['AWS_ACCESS_KEY_ID']}"
knife[:aws_secret_access_key] = "#{ENV['AWS_SECRET_ACCESS_KEY']}"

# Rackspace Cloud
knife[:rackspace_api_username] = "#{ENV['RACKSPACE_USERNAME']}"
knife[:rackspace_api_key] = "#{ENV['RACKSPACE_API_KEY']}"