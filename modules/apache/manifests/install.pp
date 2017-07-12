class apache::install inherits apache::params {
	package { $apache::params::package:
		ensure => installed,
	}
}
