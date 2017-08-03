class tomcat::params {
	$additional_packages = $facts['os']['family'] ? {
	
		'RedHat' => ['tomcat-webapps', 'tomcat-admin-webapps'],
		'Debian' => 'tomcat7',
	}
}
