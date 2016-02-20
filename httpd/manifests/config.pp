class httpd::config {
    file { '/etc/httpd/conf/httpd.conf':
        ensure => file,
        mode => '644',
        owner => root,
        group => root,
        source => "puppet:///modules/httpd/httpd.$hostname.conf",
    }
    file { '/etc/httpd/conf/workers.properties':
        ensure => file,
        mode => '644',
        owner => root,
        group => root,
        source => "puppet:///modules/httpd/workers.properties.$hostname",
    }
    file { '/etc/httpd/modules/mod_jk.so':
        ensure => file,
        mode => '644',
        owner => root,
        group => root,
        source => "puppet:///modules/httpd/mod_jk.so",
    }
}
