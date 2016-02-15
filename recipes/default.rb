#
# Cookbook Name:: settings
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# directory 'C:/temp'

if node['os'] == 'windows'
    path = "C:/temp"
else
    path = "/tmp"
end


directory path

template File.join(path, 'server-info.txt') do
  source 'server-info.txt.erb'
end

user 'biocbuild' do
  password 'blahBlah11'
end
