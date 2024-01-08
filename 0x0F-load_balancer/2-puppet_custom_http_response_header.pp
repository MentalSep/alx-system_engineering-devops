# configures the web serevr

exec { 'apt-get update':
  provider => 'shell',
}

package { 'nginx':
  ensure => 'installed',
}

file_line { 'HTTP header':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'add_header X-server-name $hostname;',
}

service { 'nginx':
  ensure  => 'running',
  require => Package['nginx'],
}
