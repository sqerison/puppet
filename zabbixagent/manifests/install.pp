# = Class: zabbixagent::install
#
# This class install zabbixagent rpm package.
#
class zabbixagent::install {
  package { 'zabbix-agent':
    ensure => present,
  }
}