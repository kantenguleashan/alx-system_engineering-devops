#!/usr/bin/env bash
# using puppet to make changes to configuration files

file { 'etc/ssh/ssh_config':
        ensure => present, 

content =>"

	#SSH client configuration
	host*
	IdentifyFile ~/.ssh/school
	PasswordAuthentication no
        ",

}
