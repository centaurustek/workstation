class variables {
$packagename = 'httpd'
package {'somepackage':
        name => $packagename,
        ensure => absent
}
}
