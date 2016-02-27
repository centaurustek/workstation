class parameters 
($package = $parameters::params::package)
inherits parameters::params
{
package {'somepacakge':
         name => $package,
         ensure => installed
}
}
