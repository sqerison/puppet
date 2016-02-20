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

    file {"/var/lib/jenkins/plugins/github.jpi":
       source => "puppet:///modules/jenkins/github.jpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/credentials.jpi":
       source => "puppet:///modules/jenkins/credentials.jpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/github-api.jpi":
       source => "puppet:///modules/jenkins/github-api.jpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/gitlab-plugin.jpi":
       source => "puppet:///modules/jenkins/gitlab-plugin.jpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/pam-auth.jpi":
       source => "puppet:///modules/jenkins/pam-auth.jpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/script-security.jpi":
       source => "puppet:///modules/jenkins/script-security.jpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/ssh-credentials.jpi":
       source => "puppet:///modules/jenkins/ssh-credentials.jpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/ssh-slaves.jpi":
       source => "puppet:///modules/jenkins/ssh-slaves.jpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
     
    file {"/var/lib/jenkins/plugins/aws-java-sdk.jpi":
       source => "puppet:///modules/jenkins/aws-java-sdk.jpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/copyartifact.jpi":
       source => "puppet:///modules/jenkins/copyartifact.jpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/jackson2-api.jpi":
       source => "puppet:///modules/jenkins/jackson2-api.jpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }
    file {"/var/lib/jenkins/plugins/s3.jpi":
       source => "puppet:///modules/jenkins/s3.jpi",
       owner => 'jenkins',
       group => 'jenkins',
       mode => '644',     
     }



}
