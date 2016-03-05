#
# Cookbook Name:: chmod
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{
  /var/log/makers
}.each do |file_path|
  file file_path do
    mode '0644'
    action :create
    # only_if { ::File.exists?(file_path) } # ファイルが無い時には作成したくない場合に付ける
  end # contentがnilならfileの中身は変更されない
end