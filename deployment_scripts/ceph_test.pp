notice('MODULAR': ceph.pp)
$plugin_yaml = "/etc/hiera/plugins/ceph_test/ceph.yaml"
file { "$plugin_yaml":
        ensure => file,
        content => template('/etc/fuel/plugins/ceph_test/ceph.erb')
        }

