class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDTEPe4NJdxly9MUYQVEtpGWP85Jrhd8RtRKugV/SkPDrmaStk3cnyS7XXBHXGmJ1Y0xG/7GgJbHftVoewB++QT4XWUtfHH2SPBs1tKTZSliO+7iCJU/Va6G/9htShajHtGWhKnR+n4Ll5U05H0brToUa0FKPnK5i6W9POAcs+HNVOHxqpJAppDHQexYBFtyXdWmvKrtrRBSkoae17DpH1UDPktxrwvh916S9O0HbtccSZteiDVbxmU33ygSsNaMZiKcOiz6kfiHH4b1cGk6kboCsgsELV4ValyrEjBJWGfK153wo4wC710bVrMHAOZ2VNyLOIn3AFS2LUDsdTWQsln',
	}  
}
