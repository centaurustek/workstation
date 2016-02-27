node 'client.localdomain' {
#$package = 'telnet'
#include casecondition 
#include variables 
#$packagename = telnet
#include selectstate::code
#include httpd
include parameters
}
node 'client1.localdomain' {

}
