class apache1::install ( $packageName = $apache1::params::packageName ) inherits apache1::params {
	
	package { $packageName:
		ensure => latest,
	}
}
	
