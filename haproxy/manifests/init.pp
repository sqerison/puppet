# = Class: haproxy
#
# The Reliable, High Performance TCP/HTTP Load Balancer
#
# This is the main haproxy class.
#
# === Parameters
#
#
# === Examples
#
# include haproxy
#
# === Authors
#
# SoftServe Puppet Team
#
class haproxy {
  Class['haproxy::install'] -> Class['haproxy::config'] ~> Class['haproxy::service']
  include haproxy::install
  include haproxy::config
  include haproxy::service
}
