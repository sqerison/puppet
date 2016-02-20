class jenkins::install { 
    yumrepo {'jenkins':
      baseurl  => "http://pkg.jenkins-ci.org/redhat",
      descr    => "Jenkins",
      enabled  => 1,
      gpgcheck => 1,
      gpgkey   => "http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key",
    }
    package {'jenkins':
      ensure  => latest,
    } 
}