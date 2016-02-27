node 'client.localdomain' {
#include casecondition 
#include variables 
#$packagename = telnet
#include selectstate::code
include httpd
}
node 'client1.localdomain' {

}
