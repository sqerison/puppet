include stdlib

class xinetd::config {
    file { '/etc/xinetd.d/mysqlchk':
         ensure => file,
         mode => '755',
         owner => root,
         group => root,
         source => "puppet:///modules/xinetd/mysqlchk",
    }
    file { '/usr/bin/clustercheck':
         ensure => file,
         mode => '755',
         owner => root,
         group => root,
         source => "puppet:///modules/xinetd/clustercheck",
    }
    file_line {'wap-wsp1':
         ensure  => present,
         path    => '/etc/services',
         line    => '#wap-wsp         9200/tcp                # WAP connectionless session service',
         match   => '^wap-wsp         9200/tcp                # WAP connectionless session service',
    }
    file_line {'wap-wsp2':
         ensure  => present,
         path    => '/etc/services',
         line    => '#wap-wsp         9200/udp                # WAP connectionless session service',
         match   => '^wap-wsp         9200/udp                # WAP connectionless session service',
    }
    file_line {'mysqlchk':
         ensure  => present,
         path    => '/etc/services',
         line    => 'mysqlchk         9200/tcp                # Galera Clustercheck',
    }
}

