# ssh client configuration
file { '/etc/ssh/ssh_config':
  ensure => present,
  line   => '    PasswordAuthentication no
    IdentityFile ~/.ssh/school',
}
