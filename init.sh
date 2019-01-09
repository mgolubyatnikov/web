#! /bin/bash
sudo pip3 uninstall django
sudo pip3 install django==2.0.0
sudo unlink /etc/nginx/sites-enabled/default 
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo /etc/init.d/nginx restart
sudo /etc/init.d/gunicorn restart
