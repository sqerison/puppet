class deploy_tomcat::service_stop {
    exec { "stop":
          command => "/etc/init.d/tomcat stop",
          logoutput => true,
          path    => "/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:\
/opt/aws/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin",
    }

    file { "/opt/tomcat/webapps/OMS.war":
        ensure => file,
        mode => '644',
        owner => 'root',
        group => 'root',
    }
    file { "/opt/tomcat/webapps/OMS":
         ensure => "directory",
         owner => 'root',
         group => 'root',
    }


}
