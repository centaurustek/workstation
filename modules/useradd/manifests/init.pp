class useradd {
user {'someuser':
       name => "abcxyz",
       ensure => absent,
       comment => "This is abcxyz user",
       shell => "/bin/bash",
       
}
}
