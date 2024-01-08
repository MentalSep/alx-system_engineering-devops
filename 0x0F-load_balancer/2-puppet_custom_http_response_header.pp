# configures the web serevr

exec { 'nginx install':
  command  => 'sudo apt-get update && sudo apt-get install -y nginx',
  provider => 'shell',
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

        add_header X-Served-By \$hostname;

}"
}

exec { 'service nginx restart':
  provider => 'shell',
}
