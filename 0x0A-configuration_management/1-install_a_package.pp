#Using Puppet, install flask from pip3

package {'python3-pip':
  ensure => installed,
}

exec {'install_flask':
  ensure   => '2.1.0',
  command  => '/usr/local/lib/python3.8 install flask==2.1.0',
  provider => Package['python3-pip'],
}
