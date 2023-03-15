node default {
  file {'/root/README':
  ensure  => file,
  content => 'This is a readme',
  owner   => 'root',
  }
  user {'testuser puppet':
  name => testuser_puppet,
  gid => 52,
  home => '/home/testpuppet',
  }
}
