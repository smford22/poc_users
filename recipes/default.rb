#
# Cookbook Name:: poc_users
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
users = node['poc_users']

users.each do |u|
  directory "c:\\Users\\Administrator\\#{u}\\.delivery" do
    recursive true
    inherits true
  end

  template "C:\\Users\\Administrator\\#{u}\\.delivery\\cli.toml" do
    source 'cli.toml.erb'
    inherits true
    variables(:user => u)
  end
end
