class deploy::service_stop {
    exec { "stop":
          command => "/etc/init.d/wildfly stop",
          logoutput => true,
          path    => "/usr/local/bin/:/bin/",
     }

    file { "/opt/wildfly-9.0.1.Final/standalone/deployments/OMS.war":
        ensure => file,
        mode => '644',
        owner => 'wildfly',
        group => 'wildfly',
    }
    file { "/opt/wildfly-9.0.1.Final/standalone/deployments/OMS":
         ensure => "directory",
         owner => 'wildfly',
         group => 'wildfly',
    }


}
