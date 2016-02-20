class deploy {
    include deploy::service_stop
    include deploy::remove_oms
    include deploy::copy
    include deploy::service_run

    Class['deploy::service_stop'] ->
    Class['deploy::remove_oms'] ->
    Class['deploy::copy'] ->
    Class['deploy::service_run']
}
