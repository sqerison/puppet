class gitlab::config {
    file { '/var/opt/gitlab/gitlab-rails/etc/gitlab.yml':
          ensure => file,
          mode   => '0644',
          owner  => root,
          group  => root,
          source => "puppet:///modules/gitlab/gitlab.yml",
    }
    file { '/var/opt/gitlab/nginx/conf/gitlab-http.conf':
          ensure => file,
          mode   => '0644',
          owner  => root,
          group  => root,
          source => "puppet:///modules/gitlab/gitlab-http.conf",
   }
}
