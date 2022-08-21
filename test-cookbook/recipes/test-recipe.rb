#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.

file '/my_fist_file' do
  content 'This is my first file for chef cookbook and update the chef code'
  action :create
end

execute "run a script" do
  command <<-EOH
  mkdir /saidir
  touch /saifie
  EOH
end

execute "run a script" do
  command <<-EOH
  mkdir /prateek
  touch /p_filei
  cat >/hemu_file
  cat >> /hemu_file
  This is my hemu file
  echo /p_filei >> 'This is testing file'
  EOH
end

user "raj" 
user "prateek"
user "hemant"
user "swapnil"
group "raj_group"
group "prateek_group"
group "swapnil_group" do
action  :create
end

group "devops" do
  action :create
  members 'swapnil' 
append true
end

user "kishor"
user "hemya"
user "himanshui" do
action :create
end


