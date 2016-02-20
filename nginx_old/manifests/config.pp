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
      source => "puppet:///modules/nginx/nginx.$hostname.conf",
    }
}
