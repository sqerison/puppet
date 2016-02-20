class mariadbc::config_one {
    file { '/etc/my.cnf':
         ensure => file,
         mode => '644',
         owner => root,
         group => root,
         source => "puppet:///modules/mariadb/my.cnf",
    }
    file { '/var/lib/mysql/mysql.sock':
         ensure => present,
         mode => '0777',
         owner => mysql,
         group => mysql,
    }
    file { '/var/lib/mysql/mysql.pid':
         ensure => present,
         mode => '0777',
         owner => mysql,
         group => mysql,
    }
}
