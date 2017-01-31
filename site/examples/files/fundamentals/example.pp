node default {
  notify { "Hello World\n":}

file { '/etc/motd':
  ensure => file,
  owner => 'root',
  group => 'root',
  mode => '0664',
  content => "Hey, Puppet is fun!\n",
}

package { 'cowsay':
  ensure => present,
  provider => gem,
}

}
