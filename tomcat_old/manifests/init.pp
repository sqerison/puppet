class tomcat {
    include tomcat::install
    include tomcat::config
    include tomcat::service
   
    Class['tomcat::install'] ->
    Class['tomcat::config']  ->
    Class['tomcat::service']
}
