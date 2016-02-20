class xinetd::install {
    package { 'xinetd':
        ensure => present,
    }
}

