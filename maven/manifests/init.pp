class maven {
    file { "/root/apache-maven-3.3.9-bin.tar.gz":
         source     => "puppet:///modules/maven/apache-maven-3.3.9-bin.tar.gz",
    }
    exec { untar-tomcat:
         command    => "/bin/tar xvzf /root/apache-maven-3.3.9-bin.tar.gz;/bin/ln -s /opt/apache-maven-3.3.9 /opt/mavem;/bin/ln -s /opt/mavem/bin/mvn /bin/mvn",
         cwd        => "/opt",
         creates    => "/opt/apache-maven-3.3.9",
         subscribe  => File["/root/apache-maven-3.3.9-bin.tar.gz"],
    }
    file { "/etc/profile.d/maven.sh":
          ensure => present,
          mode   => '755',
          owner  => root,
          group  => root,
          source => "puppet:///modules/maven/maven.sh",
    }
    exec {"maven_home":
          command => "bash -c 'source /etc/profile.d/maven.sh'",
          path    => "/usr/local/bin/:/bin/",
          require => File["/etc/profile.d/maven.sh"],
    }
}
