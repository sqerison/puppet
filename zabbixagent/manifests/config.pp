# = Class: zabbixagent::config
#
# This class set to configure zabbix agent service.
#
class zabbixagent::config {
  augeas { "zabbix_agentd.conf":
    changes => [
    "set /files/etc/zabbix/zabbix_agentd.conf/Hostname $::hostname",
    "set /files/etc/zabbix/zabbix_agentd.conf/Server $::zabbixagent::server,",
    "set /files/etc/zabbix/zabbix_agentd.conf/ServerActive $::zabbixagent::serveractive",
    "set /files/etc/zabbix/zabbix_agentd.conf/LogFile $::zabbixagent::logfile",	
    ],
  }
}
