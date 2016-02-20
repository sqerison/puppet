class mariadb::service {
      exec { "bootstrap":
          command => "/etc/init.d/mysql bootstrap",
      }
}