class httpd {
package{"httpd":
       ensure => installed,
       before => File["/etc/httpd/conf/httpd.conf"]
        }
service{"httpd":
        ensure => running,
        require => Package["httpd"]
       }
file { "/etc/httpd/conf/httpd.conf":
        ensure => file,
        source => "puppet:///modules/httpd/test",
        notify => Service["httpd"]
}
      }

