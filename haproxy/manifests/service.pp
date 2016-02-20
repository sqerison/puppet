# = Class: haproxy::service
#
# This class restart haproxy service and check service status.
#
class haproxy::service {
  service { 'haproxy':
    ensure => running,
    enable => true,
  }
}
