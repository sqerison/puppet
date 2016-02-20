class deploy_tomcat::copy {
    exec { "copy_war":
        command => "scp -i /home/ec2-user/.ssh/id_rsa \
ec2-user@172.31.18.143:/var/lib/jenkins/workspace/AWS_TEST/target/OMS.war \
/opt/tomcat/webapps",
        logoutput => true,
        path    => "/usr/bin/:/bin/",
    }   
}
