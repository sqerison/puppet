class gitlab {
    include gitlab::install
    include gitlab::install_two
    include gitlab::config
#    include gitlab::service
   
    Class['gitlab::install'] ->
    Class['gitlab::install_two'] ->
    Class['gitlab::config']
#    Class['gitlab::service']
}
