#!/usr/bin/env bash
# using puppet to make changes to config files

file { 'etc/ssh/ssh_config':
        ensure => present, 

content =>"

	#SSH clieny config
	host*
	IdentifyFile ~/.ssh/school
	PassowrdAuthication no

}
