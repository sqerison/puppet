# = Class: zabbixagent
#
# This is the main zabbixagent class
#
# == Parameters
#
#   [*$server*]
#  List of comma delimited IP addresses (or hostnames) of Zabbix servers. No spaces allowed.
#  If ServerActive is not specified, the first entry is used for receiving list of and sending active checks.
#  Note that hostnames must resolve hostname→IP address and IP address→hostname.
#  If IPv6 support is enabled then '127.0.0.1', '::127.0.0.1', '::ffff:127.0.0.1' are treated equally.
#
#   [*$serveractive*]
#  List of comma delimited IP:port (or hostname:port) pairs of Zabbix servers for active checks. No spaces allowed.
#  If ServerActive is specified, first host in the Server option is not used for active checks, only for passive checks.
#  If the port is not specified, ServerPort port is used for that host. If ServerPort is not specified, default port is used.
#  IPv6 addresses must be enclosed in square brackets if port for that host is specified. If port is not specified, square brackets for IPv6 addresses are optional.
#  This option is supported in version 1.8.12 and higher.
#
#   [*$logfile*]
#  Name of log file. If not set, syslog is used.
#
# === Examples
#
# class { 'zabbixagent':
#   server       => '192.168.0.1',
#   serveractive => '192.168.0.1',
#   logfile      => '/var/log/zabbix/zabbix_agentd.log',
# } 
#
# === Authors
#
# SoftServe Puppet Team
#
class zabbixagent (
  $server       = '192.168.0.1',
  $serveractive = '192.168.0.1',
  $logfile      = '/var/log/zabbix/zabbix_agentd.log',
){
  Class['zabbixagent::install'] -> Class['zabbixagent::config'] ~> Class['zabbixagent::service']
  include zabbixagent::install
  include zabbixagent::config
  include zabbixagent::service
}