#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.

package 'tree' do
  action :install
end

file '/my_second_file' do
  content 'This is second file in demo cookbook'
  action :create
  owner 'root'
  group 'root'
end


%w(httpd mariadb-server unzip git vim mysql) .each do |p|
  package p do
    action :install
  end
end

%w(sai hari rahul hemant prateek swapnil kishor sushant) .each do |p|
  user p do
    action :create
  end
end
