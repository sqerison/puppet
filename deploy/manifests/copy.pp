class deploy::copy {
    exec { "copy_war":
        command => "scp -i /home/ec2-user/.ssh/id_rsa \
ec2-user@172.31.18.143:/var/lib/jenkins/workspace/AWS_TEST/target/OMS.war \
/opt/wildfly-9.0.1.Final/standalone/deployments",
        logoutput => true,
        path    => "/usr/bin/:/bin/",
    }   
}
