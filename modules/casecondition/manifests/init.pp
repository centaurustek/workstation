class casecondition {
case $osfamily {
     /*
       'RedHat' : {
         package {'somepackage':
              name => 'wget',
              ensure => installed
               }
               }
          */
        'Debian' : {
         package {'somepackage':
               name => 'telnet',
               ensure => installed
               }
               }
          default : {
          file {"/tmp/abc.txt":
               ensure => file,
               source => "puppet:///modules/casecondition/abc.txt"
              }
} 
}
}
