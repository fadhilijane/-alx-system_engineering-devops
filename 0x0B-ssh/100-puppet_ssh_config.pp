# set up your client SSH configuration file so
#that you can connect to a server without typing a password

file_line {'remove password authentication':
  ensure  => 'present',
  path    => 'etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  match   => 'PasswordAuthentication yes',
  replace => true,
}

file_line {'add the private key':
  ensure => 'present',
  path   => 'etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
}
