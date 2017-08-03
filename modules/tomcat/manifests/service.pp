class tomcat::service inherits tomcat::params {
	
	service { hiera('tomcat::package'):
		ensure => running,
	}
}
