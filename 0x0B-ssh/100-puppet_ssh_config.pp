# set up your client SSH configuration file so
#that you can connect to a server without typing a password

include stdlib

file_line {'remove PasswordAuthentication':
  ensure  => present,
  path    => 'etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  replace => true,
}

file_line {'add the private key':
  ensure  => present,
  path    => 'etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
  replace => true'
}
