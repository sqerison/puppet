class deploy::service_run {
    service { 'wildfly':
         ensure => running,
    }
}

