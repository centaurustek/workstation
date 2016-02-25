class groupadd {

group { 'somegroup':
  name                 => techops_dba,
  ensure               => present
}
}
