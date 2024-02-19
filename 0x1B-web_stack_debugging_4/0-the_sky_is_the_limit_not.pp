# script to fix the nginx configuration file
exec { 'set_nginx_ulimit':
  command   => 'sed -i \'s/^ULIMIT=.*/ULIMIT="-n 2000"/\' /etc/default/nginx',
  path      => '/bin:/usr/bin',
  subscribe => Exec['nginx_restart'],
}

exec { 'nginx_restart':
  command => 'systemctl restart nginx',
  path    => '/bin:/usr/bin',
}
