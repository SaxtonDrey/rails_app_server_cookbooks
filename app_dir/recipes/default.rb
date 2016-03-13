#
# Cookbook Name:: app_dir
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%W(/var/log/#{node["app"]["name"]} /var/tmp/#{node["app"]["name"]} /var/www/#{node["app"]["name"]} ).each { |d|  
	directory d do
	  owner node["user"]
	  group node["user"]
	  recursive true
	  mode 0755
	  action :create
	  not_if { Dir.exist? d }
	end
}
