class gitlab::install {
    package { "curl": ensure => "installed" }
    package { "openssh-server": ensure => "installed" }
    package { "postfix": ensure => "installed" }
    package { "cronie": ensure => "installed" }
    package { 'gitlab-ce': ensure => "installed" }
}
              
              
              
              
