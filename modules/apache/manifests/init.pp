class apache {
$packname = 'httpd'
package {'somepackage':
       name => $packname,
       ensure => installed,
       before => File["/etc/httpd/conf/httpd.conf"]
        }
file {"/etc/httpd/conf/httpd.conf":
         ensure => file,
         source => "puppet:///modules/apache/test.conf",
         notify => Service['someservice']
      }
service {'someservice':
        name  => httpd,
        ensure => running,
        enable => true,
        require => Package['somepackage']
        }
}
 
