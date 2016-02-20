class gitlab::service {
    service { 'gitlab':
        ensure => running,
        enable => true,
    }
}
