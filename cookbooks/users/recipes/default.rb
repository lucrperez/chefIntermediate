#
# Cookbook:: users
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
jdoe_password = data_bag_item('passwords','jdoe')

user 'jdoe' do
  comment 'John Doe'
  uid 2000
  home '/home/jdoe'
  shell '/bin/bash'
  manage_home true
  password jdoe_password['password'] #Luser
#password data_bag_item('passwords','jdoe')['password'] 
end
