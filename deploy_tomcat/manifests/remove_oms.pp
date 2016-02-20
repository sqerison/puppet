class deploy_tomcat::remove_oms {
    exec { "remove_fold":
          command => "rm -rf /opt/tomcat/webapps/OMS",
          logoutput => true,
          path    => "/usr/local/bin/:/bin/",
    }   


    exec { "remove_war":
          command => "rm /opt/tomcat/webapps/OMS.war",
          logoutput => true,
          path    => "/usr/local/bin/:/bin/",
    }


}

