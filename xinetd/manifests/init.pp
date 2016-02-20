class xinetd {
    include xinetd::install
    include xinetd::config
    include xinetd::service
   
    Class['xinetd::install'] ->
    Class['xinetd::config']  ~>
    Class['xinetd::service']
}
