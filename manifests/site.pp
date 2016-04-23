#$packagename = ['wget','telnet','tree']
node 'client.localdomain' {
#$packagename = ['wget','telnet','tree']
#$package = 'telnet'
#include casecondition 
#include variables 
#$packagename = telnet
#include selectstate::code
#include httpd
#include parameters
#include apache
#include useradd
#include addfile
include packageadd
#include params
#include apache
#include casestate
#include selectstate
#customresource::abcd{"abcd":
#file => "/tmp/abcd"
#}
#include tempdemo
#include usersadd
#class {"httpd": 
#package => "httpd",
#package_ensure => present,
#config_file => "/etc/httpd/conf/httpd.conf",
#file_ensure => file,
#file_source => "puppet:///modules/httpd/httpd.conf",
#file_content => template('httpd/httpd.conf.erb'),
#service => "httpd",
#service_ensure => running,
#service_enable => true,
}




#}
node 'client1.localdomain' {
}
