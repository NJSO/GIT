curl -s https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo bash -c "curl -s https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list"
sudo apt-get update
sudo ACCEPT_EULA=Y apt-get -y install msodbcsql17 mssql-tools
sudo apt-get -y install unixodbc-dev

sudo apt-get -y install gcc g++ make autoconf libc-dev pkg-config
sudo pecl install sqlsrv
sudo pecl install pdo_sqlsrv
