class mariadbc::grant {
    exec { "grant":
          command => "/usr/bin/mysql -uroot -p12345 -e \"create database _056_DB;\
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;\
update mysql.user set password = password('12345') where user = 'root';\
GRANT PROCESS ON *.* TO 'clustercheckuser'@'localhost' IDENTIFIED BY 'clustercheckpassword!';\
FLUSH PRIVILEGES;\"",
          logoutput => true,
          path    => "/usr/local/bin/:/bin/",
    }   
}
