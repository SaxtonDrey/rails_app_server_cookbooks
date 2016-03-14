#
# Cookbook Name:: codedeploy
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "install codedeploy-agent" do
  user "root"
  command "cd; wget https://aws-codedeploy-#{node["codedeploy"]["region"]}.s3.amazonaws.com/latest/install; chmod +x ./install; yes | sudo ./install auto"
  action :run
end

service "codedeploy-agent" do
  action :start
end

