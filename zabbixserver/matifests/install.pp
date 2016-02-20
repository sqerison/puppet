class zabbixserver::install {
#     package { "mysql-server": ensure => installed }
     package { "zabbix-server-mysql": ensure => installed }
     package { "zabbix-web-mysql": ensure => installed }
     package { "zabbix-java-gateway": ensure => installed }
     package { "zabbix-agent": ensure => installed }     
}