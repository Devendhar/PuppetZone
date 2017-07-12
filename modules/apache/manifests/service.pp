class apache::service inherits apache::params {
	
	#$package = $facts['os']['family'] ? {
	#	'RedHat' => 'httpd',
	#	'Debian' => 'apache2',
	#}

	unless $facts['os']['family'] == 'Debian' {
		service { $apache::params::package:
			ensure => running,
		}
	}
}
