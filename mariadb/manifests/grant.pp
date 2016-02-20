class mariadb::grant {
     exec { "grant":
          command => "/usr/bin/mysql -uroot -e \"GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;\
update mysql.user set password = password('12345') where user = 'root';\
GRANT PROCESS ON *.* TO 'clustercheckuser'@'localhost' IDENTIFIED BY 'clustercheckpassword!';\
FLUSH PRIVILEGES;\"",
          logoutput => true,
          path    => "/usr/local/bin/:/bin/",
      }   
      file { "/root/OMS.dump":
         source     => "puppet:///modules/mariadb/OMS.dump",
      }
      exec { "add_dump":
         command => "/usr/bin/mysql -uroot -p12345 < /root/OMS.dump",
         path    => "/usr/local/bin/:/bin/",
      }
}
