class hosts{
    file { "/etc/hosts":
          ensure => present,
          mode   => '755',
          owner  => root,
          group  => root,
          source => "puppet:///modules/hosts/hosts",
    }
}