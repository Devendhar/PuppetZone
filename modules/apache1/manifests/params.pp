class apache1::params {
	$packageName = $facts['os']['family'] ? {
		'RedHat' => 'httpd',
		'Debian' => 'apache2',
	}
}
