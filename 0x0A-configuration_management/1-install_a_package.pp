#!/usr.bin/pip
#Using Puppet, install flask from pip3
package {'python3-pip':
  ensure => installed,
}

exec {'install_flask':
  ensure   => '2.1.0',
  require => Package['python3-pip'],
}
