class mariadb::config_two {
    file { '/etc/my.cnf.d/server.cnf':
         ensure => file,
         mode => '644',
         owner => root,
         group => root,
         source => "puppet:///modules/mariadb/server.$hostname.cnf",
    }
}
