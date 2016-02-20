class zabbixserver::service {
    service { 'zabbix-server':
       ensure => running,
       enable => true,     
    }
   service { 'zabbix-agent':
       ensure => running,
       enable => true,     
    }
    service { 'mysql':
       ensure => running,
       enable => true,
    }
    service { 'httpd':
       ensure => running,
       enable => true,
    }
}
