# = Class: haproxy::config
#
# This class take from puppet server haproxy config file
# and put it to haproxy server
#
class haproxy::config {
  file { '/etc/haproxy/haproxy.cfg':
    ensure => file,
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/haproxy/haproxy.cfg',
  }
}