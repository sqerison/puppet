class haproxy::config {
    file { '/etc/haproxy/haproxy.cfg':
      ensure => file,
      mode => '644',
      owner => root,
      group => root,
      source => "puppet:///modules/haproxy/haproxy.cfg",
    }
}
