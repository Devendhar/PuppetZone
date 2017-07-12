class apache1::service inherits apache1::params {

	#service { $apache1::params::packageName:
	service { $apache1::servicename:
		ensure => running,
	}

}
