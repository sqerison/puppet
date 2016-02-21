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
    file { "/var/lib/jenkins/users":
      ensure => "directory",
      owner => 'jenkins',
      group => 'jenkins',
    }
    file { "/var/lib/jenkins/users/config.xml":
      ensure => "file",
      mode => '644',
      owner => 'jenkins',
      group => 'jenkins',
      source => "puppet:///modules/jenkins/config_user.xml",
    }
    file { "/var/lib/jenkins/jobs/Project":
      ensure => "directory",
      owner => 'jenkins',
      group => 'jenkins',
    }
    file { "/var/lib/tomcat6/webapps/":
      ensure => "directory",
      mode => '777',
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
    file {"/var/lib/jenkins/plugins/credentials.hpi":
       source => "puppet:///modules/jenkins/credentials.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/git.hpi":
       source => "puppet:///modules/jenkins/git.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/junit.hpi":
       source => "puppet:///modules/jenkins/junit.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/mailer.hpi":
       source => "puppet:///modules/jenkins/mailer.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/matrix-project.hpi":
       source => "puppet:///modules/jenkins/matrix-project.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/ssh-credentials.hpi":
       source => "puppet:///modules/jenkins/ssh-credentials.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/git-client.hpi":
       source => "puppet:///modules/jenkins/git-client.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/scm-api.hpi":
       source => "puppet:///modules/jenkins/scm-api.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/github.hpi":
       source => "puppet:///modules/jenkins/github.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
}