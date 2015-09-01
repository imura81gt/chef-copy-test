#
# Cookbook Name:: chef-copy-test
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
include_recipe 'apache2'

digits = 0..9

digits.each do |digit|
  file "/root/grub.conf.#{digit}" do
    content IO.read('/etc/grub.conf')
    action :create
    notifies :restart, 'service[apache2]', :delayed
  end
end
