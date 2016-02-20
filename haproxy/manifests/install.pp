# = Class: haproxy::install
#
# This class install haproxy rpm package.
#
class haproxy::install {
  package { 'haproxy':
    ensure => present,
  }
}