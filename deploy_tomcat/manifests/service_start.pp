class deploy_tomcat::service_start {
    exec { "start":
          command => "/etc/init.d/tomcat start",
          logoutput => true,
          path    => "/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:\
/sbin:/opt/aws/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin",
     }
}

