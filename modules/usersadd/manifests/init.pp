class usersadd 
($username = hiera('username'))
{
user {$username:
       ensure => present

}
}
