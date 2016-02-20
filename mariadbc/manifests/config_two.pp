class mariadbc::config_two {
    file { '/etc/my.cnf.d/server.cnf':
         ensure => file,
         mode => '644',
         owner => root,
         group => root,
         source => "puppet:///modules/mariadbc/server.$hostname.cnf",
    }
}
