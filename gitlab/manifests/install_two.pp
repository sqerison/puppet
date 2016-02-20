class gitlab::install_two {
    exec { 'reconfigure_gitlab':
         command    => "/opt/gitlab/bin/gitlab-ctl reconfigure",
#         timeout => 1800,
         path    => "/usr/local/bin/:/bin/",
         logoutput => true,
#        tries => 5,
    }
}
