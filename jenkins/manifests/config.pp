class jenkins::config {
    file { "/var/lib/jenkins/config.xml":
      ensure => file,
      mode => '644',
      owner => 'jenkins',
      group => 'jenkins',
      source => "puppet:///modules/jenkins/config.xml",
    }
    file { "/var/lib/jenkins/hudson.tasks.Maven.xml":
      ensure => file,
      mode => '644',
      owner => 'jenkins',
      group => 'jenkins',
      source => "puppet:///modules/jenkins/hudson.tasks.Maven.xml",
    }
    file { "/var/lib/jenkins/jobs":
      ensure => "directory",
      owner => 'jenkins',
      group => 'jenkins',
    }
    file { "/var/lib/jenkins/jobs/Project":
      ensure => "directory",
      owner => 'jenkins',
      group => 'jenkins',
    }
    file { "/var/lib/jenkins/jobs/Project/config.xml":
      ensure => "file",
      mode => '644',
      owner => 'jenkins',
      group => 'jenkins',
      source => "puppet:///modules/jenkins/config2.xml",
    }
    file {["/var/lib/jenkins", "/var/lib/jenkins/plugins"]:
       ensure => "directory",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '755',
    }
    file {"/var/lib/jenkins/plugins/git.hpi":
       source => "puppet:///modules/jenkins/git.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }

    file {"/var/lib/jenkins/plugins/git-client.jpi":
       source => "puppet:///modules/jenkins/git-client.jpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/*.hpi":
       source => "puppet:///modules/jenkins/",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
}
