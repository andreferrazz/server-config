# Simple Web Server Config

A simple web server running nginx as a reverse proxy

## Configuration Guide

### First things first

#### Update the packages
```
sudo apt update && sudo apt upgrade
```

#### Restart system
```
sudo reboot
```

### Certbot

#### Install certbot
```
sudo snap install --classic certbot
```
```
sudo ln -s /snap/bin/certbot /usr/bin/certbot
```
```
sudo snap set certbot trust-plugin-with-root=ok
```

#### Getting certificates
```
sudo certbot certonly --manual --preferred-challenges=dns -d andreferraz.com -d *.andreferraz.com
```

### Nginx

#### Install Nginx
```
sudo apt install nginx
```

#### Place ssl params
```
sudo vim /etc/nginx/ssl_params
```

#### Configuring Nginx
```
sudo vim /etc/nginx/sites-available/andreferraz.com
```
```
sudo ln -s /etc/nginx/sites-available/andreferraz.com /etc/nginx/sites-enabled/
```
```
sudo nginx -t
```
```
sudo systemctl restart nginx
```

### Firewall

#### Allow SSH, HTTP and HTTPS

*On Amazon Lightsail you have to edit the rules in the console too*

```
sudo ufw allow OpenSSH
```
```
sudo ufw allow 'Nginx HTTP'
```
```
sudo ufw allow 'Nginx HTTPS'
```

#### Enable and reload
```
sudo ufw enable 
```
```
sudo ufw reload
```
