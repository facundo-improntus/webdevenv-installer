sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt upgrade -y
sudo apt install snapd -y
sudo apt install git openjdk-8-jdk apache2 libapache2-mod-fcgid mariadb-client mariadb-server net-tools -y
sudo apt install php5.6 php5.6-bcmath php5.6-curl php5.6-fpm php5.6-gd php5.6-intl php5.6-json php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-soap php5.6-xml php5.6-zip -y
sudo apt install php7.1 php7.1-bcmath php7.1-curl php7.1-fpm php7.1-gd php7.1-intl php7.1-json php7.1-mbstring php7.1-mcrypt php7.1-mysql php7.1-soap php7.1-xml php7.1-zip -y
sudo apt install php7.2 php7.2-bcmath php7.2-curl php7.2-fpm php7.2-gd php7.2-intl php7.2-json php7.2-mbstring php7.2-mcrypt php7.2-mysql php7.2-soap php7.2-xml php7.2-zip -y
sudo apt install php7.3 php7.3-bcmath php7.3-curl php7.3-fpm php7.3-gd php7.3-intl php7.3-json php7.3-mbstring php7.3-mcrypt php7.3-mysql php7.3-soap php7.3-xml php7.3-zip -y
sudo apt install php7.4 php7.4-bcmath php7.4-curl php7.4-fpm php7.4-gd php7.4-intl php7.4-json php7.4-mbstring php7.4-mcrypt php7.4-mysql php7.4-soap php7.4-xml php7.4-zip -y
sudo apt install php8.1 php8.1-bcmath php8.1-curl php8.1-fpm php8.1-gd php8.1-intl php8.1-mbstring php8.1-mcrypt php8.1-mysql php8.1-soap php8.1-xml php8.1-zip -y
sudo apt install php8.2 php8.2-bcmath php8.2-curl php8.2-fpm php8.2-gd php8.2-intl php8.2-mbstring php8.2-mcrypt php8.2-mysql php8.2-soap php8.2-xml php8.2-zip -y
sudo apt install php8.3 php8.3-bcmath php8.3-curl php8.3-fpm php8.3-gd php8.3-intl php8.3-mbstring php8.3-mcrypt php8.3-mysql php8.3-soap php8.3-xml php8.3-zip -y
sudo apt install php5.6-xdebug php7.1-xdebug php7.2-xdebug php7.3-xdebug php7.4-xdebug php8.1-xdebug php8.2-xdebug php8.3-xdebug -y
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.17.0-amd64.deb
sudo dpkg -i elasticsearch-7.17.0-amd64.deb
sudo systemctl daemon-reload
sudo systemctl enable elasticsearch.service
sudo systemctl start elasticsearch.service
wget https://getcomposer.org/download/2.2.23/composer.phar
sudo chmod +x composer.phar
sudo mv composer.phar /usr/local/bin/composer
wget https://getcomposer.org/download/2.7.1/composer.phar
sudo chmod +x composer.phar
sudo mv composer.phar /usr/local/bin/composer2
wget https://getcomposer.org/download/1.10.26/composer.phar
sudo chmod +x composer.phar
sudo mv composer.phar /usr/local/bin/composer1
sudo apt install redis rabbitmq-server varnish -y
sudo sed -i "s/www-data/${USER}/g" /etc/apache2/envvars
sudo a2enmod actions headers rewrite ssl proxy proxy_fcgi proxy_html proxy_http
sudo openssl req -x509 -nodes -days 999 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt
sudo service apache2 restart
sudo sed -i "s/www-data/${USER}/g" /etc/php/*/fpm/pool.d/www.conf
XDEBUG_IP=`cat xdebug-ip.txt`
sed -i "s/XDEBUG_IP/${XDEBUG_IP}/g" xdebug.ini
sudo cp xdebug.ini /etc/php/5.6/mods-available/xdebug.ini
sudo cp xdebug.ini /etc/php/7.1/mods-available/xdebug.ini
sudo cp xdebug.ini /etc/php/7.2/mods-available/xdebug.ini
sudo cp xdebug.ini /etc/php/7.3/mods-available/xdebug.ini
sudo cp xdebug.ini /etc/php/7.4/mods-available/xdebug.ini
sudo cp xdebug.ini /etc/php/8.1/mods-available/xdebug.ini
sudo cp xdebug.ini /etc/php/8.2/mods-available/xdebug.ini
sudo cp xdebug.ini /etc/php/8.3/mods-available/xdebug.ini
sudo service php5.6-fpm restart
sudo service php7.1-fpm restart
sudo service php7.2-fpm restart
sudo service php7.3-fpm restart
sudo service php7.4-fpm restart
sudo service php8.1-fpm restart
sudo service php8.2-fpm restart
sudo service php8.3-fpm restart
sudo sed -i "s/-Xms4g/-Xms512m/g" /etc/elasticsearch/jvm.options
sudo sed -i "s/-Xmx4g/-Xmx512m/g" /etc/elasticsearch/jvm.options
sudo sed -i "s/## -Xms/-Xms/g" /etc/elasticsearch/jvm.options
sudo sed -i "s/## -Xmx/-Xmx/g" /etc/elasticsearch/jvm.options
sudo /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic
sudo /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu
sudo service elasticsearch restart
sed -i "s/CUSTOM_USER/${USER}/g" mysql-user.sql
sudo mysql mysql < mysql-user.sql
wget https://nodejs.org/dist/v20.18.0/node-v20.18.0-linux-x64.tar.xz
sudo mkdir -p /usr/local/lib/nodejs
sudo tar -xJvf node-v20.18.0-linux-x64.tar.xz -C /usr/local/lib/nodejs
sudo ln -s /usr/local/lib/nodejs/node-v20.18.0-linux-x64/bin/node /usr/local/bin/node
sudo ln -s /usr/local/lib/nodejs/node-v20.18.0-linux-x64/bin/npm /usr/local/bin/npm
sudo ln -s /usr/local/lib/nodejs/node-v20.18.0-linux-x64/bin/npx /usr/local/bin/npx
