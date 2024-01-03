# install and configure nginx in the web server

exec { 'nginx install':
  command  => 'sudo apt-get update && sudo apt-get install -y nginx',
  provider => 'shell',
}

file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/html;

        index index.html index.htm index.nginx-debian.html;

        server_name _;

        location / {
                try_files \$uri \$uri/ =404;
        }

        rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;

}"
}

exec { 'service nginx restart':
  provider => 'shell',
}
