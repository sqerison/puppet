class mariadbc::install {
    package { 'MariaDB-Galera-server':
         ensure => installed,
    }
    package { 'MariaDB-client':
         ensure => installed,
    }
    package { 'galera':
         ensure => installed,
    }
}
