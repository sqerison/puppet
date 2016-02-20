class zabbixserver::config {
    exec { "create_zabbix_db":
          command => "/usr/bin/mysql -uroot \"create database zabbix character set utf8; GRANT ALL PRIVILEGES ON zabbix.* TO 'zabbix'@'%' IDENTIFIED BY 'password'; FLUSH PRIVILEGES; exit;\"",
          logoutput => true,
    }
    augeas { "zabbix_server.conf":
          changes => [
		      "set /files/etc/zabbix/zabbix_server/DBHost zabbix.training.local",
          "set /files/etc/zabbix/zabbix_server/DBName zabbix",
	        "set /files/etc/zabbix/zabbix_server/DBUser zabbix",
          "set /files/etc/zabbix/zabbix_server/DBPassword password",
          ],
    }
    exec {"schema_importing templates":
          command => "/bin/bash -c 'mysql -u zabbix -p zabbix < /usr/share/doc/zabbix-server-mysql-2.0.6/create/schema.sql'",
          path    => "/usr/local/bin/:/bin/",
    }
    exec {"images_importing templates":
          command => "/bin/bash -c 'mysql -u zabbix -p zabbix < /usr/share/doc/zabbix-server-mysql-2.0.6/create/images.sql'",
          path    => "/usr/local/bin/:/bin/",
    }
    exec {"data_importing templates":
          command => "/bin/bash -c 'mysql -u zabbix -p zabbix < /usr/share/doc/zabbix-server-mysql-2.0.6/create/data.sql'",
          path    => "/usr/local/bin/:/bin/",
    }
    augeas { "php.ini":
          changes => [
		      "set /files/etc/php.ini/max_execution_time 300",
          "set /files/etc/php.ini/post_max_size 16M",
	        "set /files/etc/php.ini/max_input_time 300",
          "set /files/etc/php.ini/date.timezone Europe/Kiev",
          ],
    }
    augeas { "zabbix_agentd.conf":
          changes => [
		      "set /files/etc/zabbix/zabbix_agentd/Hostname zabbix.training.local",
			    "set /files/etc/zabbix/zabbix_agentd/Server 192.168.103.199",
		      "set /files/etc/zabbix/zabbix_agentd/ServerActive 192.168.103.199",
          ],
	  }
}