# modules/mc/manifests/init.pp - manage mc stuff
# Copyright (C) 2007 admin@immerda.ch
#

modules_dir { "mc": }

class mc {
	package{mc:
                name => mc,
                alias   => 'mc',
                category => $operatingsystem ? {
                        gentoo => 'app-misc',
                        default => '',
                },
                ensure => present,
        }
}
