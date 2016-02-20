class jenkins::install {
    package {'jenkins':
      ensure  => latest,
      require => Yumrepo['jenkins']
    } 
}
