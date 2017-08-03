class tomcat::install inherits tomcat::params {

	$package=hiera('tomcat::package')
	package { $package:
		ensure => latest,
	}
	
	package { $additional_packages:
		ensure => latest,
	}
}
