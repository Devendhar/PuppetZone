class apache::params {
	
	$package = $facts['os']['family'] ? {
		
		'RedHat' => 'httpd',
		'Debian' => 'apache2',
	
	}

}
