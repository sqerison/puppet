class zabbixserver {
    include zabbixserver::install
    include zabbixserver::config
    include zabbixserver::service
   
    Class['zabbixserver::install'] ->
    Class['zabbixserver::config']  ~>
    Class['zabbixserver::service']
}
