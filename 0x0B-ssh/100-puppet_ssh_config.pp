# Configuring the SSH client using puppet 

file { '/etc/ssh/ssh_config':
  ensure  => present,
  content =>
    "${file('/etc/ssh/ssh_config')}Host web-01
        HostName 54.173.215.95
        ServerAliveInterval 120
        IdentityFile ~/.ssh/school
        PasswordAuthentication no",
  owner   => 'itsfoss',
  group   => 'itsfoss',
  mode    => '0744'
}

# Explanataion
# I've append the new configurations to the 
# '/etc/ssh/ssh_config' file

