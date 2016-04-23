class casestate {
case $::osfamily  {
/*         'RedHat': {
                      user{'someuser':
                            name => abcdef,
                            ensure => present,
                     }                 


                   }
*/
         'Debian': {
                      package{"telnet":
                          ensure => installed
                         }


                 }
           default: {
                    file {"/tmp/abcdef.txt":
                      ensure => file,
                      content => "this is from casestate and for default value this file is created"
                  }

                 }
}
}
