class deploy_tomcat::install {
   file { "/tmp/123456789":
      ensure => present,
      mode => '644',
      owner => 'root',
      group => 'root',
   }
}
