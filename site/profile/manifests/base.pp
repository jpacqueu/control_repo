class profile::base{
  user {'admin':
    ensure => present,
    }
    include profiles::ssh_server
}
    
