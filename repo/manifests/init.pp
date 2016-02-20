class repo {
    file { '/etc/yum.repos.d/local.repo':
#    file { '/etc/yum.repos.d/nexus-production.repo':
         ensure => file,
         mode => '644',
         owner => root,
         group => root,
         source => "puppet:///modules/repo/local.repo",
#         source => "puppet:///modules/repo/nexu-production.repo",
         }
}
