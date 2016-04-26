notice('MODULAR': ceph.pp)
$hiera_dir = '/etc/hiera/plugins'
$plugin_name = 'ceph'
$plugin_yaml = "${plugin_name}.yaml"
file { "$plugin_yaml":
        ensure => file,
        content => template()
        }

