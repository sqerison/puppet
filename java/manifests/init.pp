class java {
    package { "java-1.7.0-openjdk":
          ensure => latest,
    }
    file { "/etc/profile.d/java.sh":
          ensure => present,
          mode   => '755',
          owner  => root,
          group  => root,
          source => "puppet:///modules/java/java.sh",
    }
    exec {"java_home":
          command => "bash -c 'source /etc/profile.d/java.sh'",
          path    => "/usr/local/bin/:/bin/",
          require => File["/etc/profile.d/java.sh"],
    }
}
