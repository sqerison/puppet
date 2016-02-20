class mariadb {
    include mariadb::install
    include mariadb::config_one
    include mariadb::grant
    include mariadb::config_two
    include mariadb::service


    Class['mariadb::install'] ->
    Class['mariadb::config_one']  ->
    Class['mariadb::config_two'] ->
    Class['mariadb::service'] ->
    Class['mariadb::grant']
}
