class addfile {
file {"/tmp/abcxyz.txt":
      ensure => file,
      owner => "abcxyz",
      group  => "root",
      mode => 777,
      content => " This is a test file from the master server created"
}




}
