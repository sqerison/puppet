# = Class: zabbixagent::service
#
# This class restart zabbixagent service and check service status.
#
class zabbixagent::service {
  service { 'zabbix-agent':
    ensure => running,
    enable => true,     
  }
}