class mariadbc{
    include mariadbc::install
    include mariadbc::config_one
    include mariadbc::config_two
    include mariadbc::service
#    include mariadbc::grant


    Class['mariadbc::install'] ->
    Class['mariadbc::config_one']  ->
    Class['mariadbc::config_two'] ->
    Class['mariadbc::service']
#    Class['mariadbc::grant']
}
