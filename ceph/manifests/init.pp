# Class: ceph
#
# This module manages Ceph
#
# Parameters: none (yet)
#
# Actions: Installs Ceph
#
# Requires: apt
#
# Sample Usage: none (yet)
#
class ceph {
	apt::source { "ceph":
		location          => "http://ceph.com/debian/",
		release           => "$lsbdistcodename",
		repos             => "main",
		required_packages => "debian-keyring debian-archive-keyring",
	}
	
	apt::key { "ceph":
		key_source => "https://ceph.com/git/?p=ceph.git;a=blob_plain;f=keys/release.asc",
	}
	
	package { "ceph":
		ensure => "installed"
	}
}
