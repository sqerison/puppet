class deploy_tomcat {
    include deploy_tomcat::service_stop
    include deploy_tomcat::remove_oms
    include deploy_tomcat::copy
    include deploy_tomcat::service_start

    Class['deploy_tomcat::service_stop'] ->
    Class['deploy_tomcat::remove_oms'] ->
    Class['deploy_tomcat::copy'] ->
    Class['deploy_tomcat::service_start']
}
