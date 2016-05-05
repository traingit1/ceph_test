notice('MODULAR: ceph_test_compute.pp')
$plugin_yaml = "/etc/hiera/plugins/ceph_test.yaml"
file { "/etc/hiera/":
	ensure => directory,
	}
file { "/etc/hiera/plugins/":
	ensure => directory,
	require => File["/etc/hiera"],
	}
file { "$plugin_yaml":
        ensure => file,
        content => template('/etc/fuel/plugins/ceph_test-1.0/ceph_compute.erb'),
        require => File["/etc/hiera/plugins/"],
	}
