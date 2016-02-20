class warcopy (
                $sshpass = true,
                $user = 'jenkins',
                $ip = "192.168.103.181",
                $path = '/var/lib/jenkins/workspace/OMS/target',
                $path2 = '/opt/apache-tomcat-8.0.24/webapps',
                $userPassword = '19883011romko',
       
  
){
    if ( $sshpass == false ) {
      exec { "copy domain jar ${domain}":
        command => "scp -oStrictHostKeyChecking=no -oCheckHostIP=no ${user}@${ip}:${path}/abc.war ${path2}/abc.war",
      }
    } else {
      exec { "copy domain jar ${domain}":
        command => "sshpass -p ${userPassword} scp -oStrictHostKeyChecking=no -oCheckHostIP=no ${user}@${ip}:${path}/abc.war ${path2}/abc.war",
      }
    }
}
