notice('MODULAR: ceph_test.pp')
$plugin_yaml = "/etc/hiera/plugins/ceph_test/ceph.yaml"
file { "/etc/hiera/plugins/ceph_test":
	ensure => directory,
	}
file { "$plugin_yaml":
        ensure => file,
        content => template('/etc/fuel/plugins/ceph_test-1.0/ceph.erb'),
        require => File["/etc/hiera/plugins/ceph_test"],
	}
