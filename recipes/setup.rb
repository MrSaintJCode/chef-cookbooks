packages = [
	'sudo',
	'epel-release',
	'tree',
	'ntp',
	'git',
	'wget',
	'curl',
	'vim',
	'nano'
]


user 'mrsaintj' do 
  comment 'Default User'
  shell '/bin/bash'
end

packages.each do |i|
  package i do
    action :install
  end
end 

file '/etc/motd' do
  content "Welcome to MrsaintJs Lab :)! \n"
  action :create
  owner 'root'
  group 'root'
end
