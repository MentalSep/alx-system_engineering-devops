# configures the web serevr

exec { 'apt-get update':
  provider => 'shell',
}

package { 'nginx':
  ensure => 'installed',
}

file_line { '/etc/nginx/sites-available/default':
  ensure => present,
  after  => 'listen 80 default_server;',
  line   => 'add_header X-server-name $hostname;',
}

service { 'nginx':
  ensure  => 'running',
  require => Package['nginx'],
}
