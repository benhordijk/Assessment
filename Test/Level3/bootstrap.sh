#!/usr/bin/env bash
echo "==> [ENTERING BOOTSTRAP.SH] <=="

## VARIABLES ===========================================================================================================

# the name of the database to put the dummy.sql in
DATABASE_NAME="dummy"

# the version of php, certain mods depend on this number
PHP_BUILD="20100525"

## APTITUDE ============================================================================================================

echo "==> Updating Aptitude..."
aptitude update

## GIT =================================================================================================================

if [ ! -f /usr/bin/git ]; then
    echo "==> Installing GIT..."
    aptitude install -y git
fi

## MYSQL ===============================================================================================================

if [ ! -f /usr/bin/mysql ]; then
    echo "==> Installing MySQL..."
    echo "mysql-server mysql-server/root_password password root" | debconf-set-selections
    echo "mysql-server mysql-server/root_password_again password root" | debconf-set-selections
    aptitude install -y mysql-client mysql-server
fi

echo "==> Creating databases..."
echo "CREATE DATABASE IF NOT EXISTS ${DATABASE_NAME} DEFAULT CHARACTER SET utf8" | mysql -uroot -proot
echo "GRANT ALL ON *.* TO 'root'@'localhost'" | mysql -uroot -proot
echo "FLUSH PRIVILEGES" | mysql -uroot -proot
echo "==> Importing /vagrant/dummy.sql if provided..."
if [ -f /vagrant/dummy.sql ]; then
    mysql -uroot -proot ${DATABASE_NAME} < /vagrant/dummy.sql
fi

## PHP =================================================================================================================

if [ ! -f /usr/bin/php ]; then
    echo "==> Installing php..."
    aptitude install -y php5 php5-dev php5-mysql php5-curl php-pear
    pecl install xdebug
    # xdebug
    echo "; priority=20" >> /etc/php5/mods-available/xdebug.ini
    echo "zend_extension=/usr/lib/php5/${PHP_BUILD}/xdebug.so" >> /etc/php5/mods-available/xdebug.ini
    php5enmod xdebug
    # ini
    echo "display_errors=On" >> /etc/php5/cli/php.ini
fi

## RESTARTING SERVICES =================================================================================================

echo "==> (Re)staring some services..."
service mysql restart
