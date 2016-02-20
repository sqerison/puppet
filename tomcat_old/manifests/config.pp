class tomcat::config {
    file { '/opt/tomcat/conf/server.xml':
          ensure => file,
          mode   => '0600',
          owner  => root,
          group  => root,
          source => "puppet:///modules/tomcat/server.$hostname.xml",
    }
    file { '/opt/tomcat/conf/tomcat-users.xml':
          ensure => file,
          mode   => '0600',
          owner  => root,
          group  => root,
          source => "puppet:///modules/tomcat/tomcat-users.$hostname.xml",
    }
    file { "/etc/profile.d/tomcat.sh":
          ensure => file,
          mode   => '0744',
          owner  => root,
          group  => root,
          source => "puppet:///modules/tomcat/tomcat.sh",
    }
    exec {"tomcat_home":
          command => "/bin/bash -c 'source /etc/profile.d/tomcat.sh'",
          path    => "/usr/local/bin/:/bin/",
          require => File["/etc/profile.d/tomcat.sh"],
          logoutput => true,
    }
#    exec {"tomcat_home2":
#          command => "/bin/bash -c 'export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.85.x86_64; echo \$JAVA_HOME'",
#          path    => "/usr/local/bin/:/bin/",
#          logoutput => true,
#    }

    file { "/etc/init.d/tomcat":
          ensure => present,
          mode   => '0755',
          owner  => root,
          group  => root,
          source => "puppet:///modules/tomcat/tomcat",
    }
}
