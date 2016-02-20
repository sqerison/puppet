class deploy::remove_oms {
    exec { "remove_fold":
          command => "rm -rf /opt/wildfly-9.0.1.Final/standalone/deployments/OMS",
          logoutput => true,
          path    => "/usr/local/bin/:/bin/",
    }

    exec { "remove_war":
          command => "rm /opt/wildfly-9.0.1.Final/standalone/deployments/OMS.war",
          logoutput => true,
          path    => "/usr/local/bin/:/bin/",
    }

}

