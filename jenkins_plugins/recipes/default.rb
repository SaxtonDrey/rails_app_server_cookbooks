#
# Cookbook Name:: jenkins_plugins
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

JENKINS_URL = "http://localhost:8080"

script "install_plugins" do
  interpreter "bash"
  user "root"
  cmd = "wget -O jenkins-cli.jar #{JENKINS_URL}/jnlpJars/jenkins-cli.jar \n"
  node["jenkins_plugins"].each{|p|
    cmd += "java -jar jenkins-cli.jar -s #{JENKINS_URL} install-plugin #{p} \n"
  }
  code cmd
end
