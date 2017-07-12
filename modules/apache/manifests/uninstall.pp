class apache::uninstall inherits apache::params {

	#$package = $facts['os']['family'] ? {
	#	'RedHat' => 'httpd',
	#	'Debian' => 'apache2',
	#}

	package { $apache::params::package:
		ensure => purged,
	}

}
