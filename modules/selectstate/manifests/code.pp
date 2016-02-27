class selectstate::code {
$packagename = $osfamily ? {
               'RedHat' => 'telnet',
               'Debian' => 'wget',
                Default => 'httpd',
}
package {'somepackage':
        name => $packagename,
        ensure => installed
}
}
