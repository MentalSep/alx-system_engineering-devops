# configures the web serevr

exec { 'update':
  command  => 'sudo apt-get update',
  provider => 'shell',
  before   => Package['install nginx']
}

package { 'install nginx':
  command  => 'sudo apt-get install -y nginx',
  provider => 'shell',
  before   => file_line['HTTP header']
}

file_line { 'HTTP header':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => '        add_header X-Served-By $hostname;',
  before => Service['nginx restart']
}

service { 'nginx restart':
  command  => 'sudo service nginx restart',
  provider => 'shell',
}
