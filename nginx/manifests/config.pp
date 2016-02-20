class nginx::config {
    user {'nginx':
     ensure => present,
     shell => '/sbin/nologin',
    }
    
#    file { '/etc/nginx/conf.d/nginx.conf':
#      ensure => file,
#      mode => '644',
#      owner => root,
#      group => root,
#      source => "puppet:///modules/nginx/nginx.$hostname.conf",
#    }
    file { '/etc/nginx/nginx.conf':
      ensure => file,
      mode => '644',
      owner => root,
      group => root,
      source => "puppet:///modules/nginx/nginx.conf",
    }
    file { "/etc/nginx/ssl":
      ensure => "directory",
      owner => 'root',
      group => 'root',
    }
    file { '/etc/nginx/ssl/nginx.crt':
      ensure => file,
      mode => '644',
      owner => root,
      group => root,
      source => "puppet:///modules/nginx/nginx.crt",
    }
    file { '/etc/nginx/ssl/nginx.key':
      ensure => file,
      mode => '644',
      owner => root,
      group => root,
      source => "puppet:///modules/nginx/nginx.key",
    }

}
