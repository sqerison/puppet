class jenkins {
    include jenkins::repo
    include jenkins::install
    include jenkins::config
    include jenkins::service 
  
    Class['jenkins::repo'] ->
    Class['jenkins::install'] ->
    Class['jenkins::config']  ->
    Class['jenkins::service']
}
