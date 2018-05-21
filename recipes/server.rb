#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

#file '/home/centos/cookbook.txt' do
#content "Welcome to cookbooks
#ipaddress : #{node['hostname']}"
#end

package 'httpd' 
# action :remove
#end

file '/var/www/html/index.html' do
 content "<h1>Hello, world!</h1>
 <h2>ipaddress: #{node['ipaddress']}</h2>
 <h2>hostname: #{node['hostname']}</h2>
"
end

service 'httpd' do
  action [ :enable, :start ]
end
