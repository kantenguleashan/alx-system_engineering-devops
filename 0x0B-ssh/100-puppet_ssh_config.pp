#!usr/bin/env bash
# using puppet to make schanges to config files

file { 'ect/ssh/ssh_config':
	ensure => present,

content =>"
	
	#SSH Client configuration 
	host* 
	IdentityFile ~/.ssh/school
	PasswordAuthentication no

}
