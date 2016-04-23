class params { 
#$packagename = wget
package {$packagename:
        # name => $packagename,
         ensure => installed
}
}
