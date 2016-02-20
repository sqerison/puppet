class haproxy {
    include haproxy::install
    include haproxy::config
    include haproxy::service

    Class['haproxy::install'] ->
    Class['haproxy::config']  ~>
    Class['haproxy::service']
}
