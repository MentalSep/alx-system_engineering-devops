# script to increase the number of opne files for Holberton user
exec { 'sed -i "/holberton hard/s/5/1000/" /etc/security/limits.conf':
  path => '/usr/bin:/bin',
}

exec { 'sed -i "/holberton soft/s/4/1000/" /etc/security/limits.conf':
  path => '/usr/bin:/bin',
}
