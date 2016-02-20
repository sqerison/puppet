class mariadbc::service {
    service { 'mysql':
         ensure => running,
         enable => true,
    }
}