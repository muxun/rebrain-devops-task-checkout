  1 server {
  2   listen 80;
  3   server_name mysite.domain.com;
  4   access_log /var/log/nginx/myvhost.log;
  5   location / {
  6     root /var/www/myvhost/;
  7     index index.htm index.html;
  8     autoindex on;
  9   }
 10 }
