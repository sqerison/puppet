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
    file {"/var/lib/jenkins/plugins/credentials.hpi":
       source => "http://mirrors.jenkins-ci.org/plugins/credentials/latest/credentials.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/git.hpi":
       source => "http://mirrors.jenkins-ci.org/plugins/git/latest/git.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/junit.hpi":
       source => "http://mirrors.jenkins-ci.org/plugins/junit/latest/junit.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/mailer.hpi":
       source => "http://mirrors.jenkins-ci.org/plugins/mailer/latest/mailer.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/matrix-project.hpi":
       source => "http://mirrors.jenkins-ci.org/plugins/matrix-project/latest/matrix-project.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/ssh-credentials.hpi":
       source => "http://mirrors.jenkins-ci.org/plugins/ssh-credentials/latest/ssh-credentials.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/git-client.hpi":
       source => "http://mirrors.jenkins-ci.org/plugins/git-client/latest/git-client.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/scm-api.hpi":
       source => "http://mirrors.jenkins-ci.org/plugins/scm-api/latest/scm-api.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/github.hpi":
       source => "http://mirrors.jenkins-ci.org/plugins/github/latest/github.hpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
}