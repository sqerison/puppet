Exec{ path => "/bin:/sbin:/usr/bin:/usr/sbin/", }

class tomcat::install {
    file { "/root/apache-tomcat-8.0.24.tar.gz":
         source     => "puppet:///modules/tomcat/apache-tomcat-8.0.24.tar.gz",
    }
    exec { untar-tomcat:
         command    => "/bin/tar xvzf /root/apache-tomcat-8.0.24.tar.gz",
         cwd        => "/opt",
         creates    => "/opt/apache-tomcat-8.0.24",
         subscribe  => File["/root/apache-tomcat-8.0.24.tar.gz"],
    }
    file { "/opt/tomcat":
         ensure     => "/opt/apache-tomcat-8.0.24",
         require    => Exec[untar-tomcat];
    }
#    user { "tomcat":
#         shell      => "/sbin/nologin",
#         ensure     => "present";
#    }
#    exec { chown-tomcat:
#         command    => "chown -R tomcat:tomcat /opt/tomcat*",
#         require    => [ User[tomcat], File["/opt/tomcat"] ],
#         subscribe  => Exec[untar-tomcat],
#         refreshonly => true;
#    }
}
