class elk::install inherits elk::params{
	
	$packages.each |String $package| {
	package { $package:
		provider => rpm,
		ensure => present,
		source => "/opt/${package}",
	}
	}
	#package { elasticsearch:
  	#	provider => rpm,
	#	ensure => present,
	#	source => '/opt/elasticsearch-5.5.1.rpm',
	#}

	#package { logstash:
	#	provider => rpm,
	#	ensure => present,
	#	source => '/opt/logstash-5.5.1.rpm',
	#}
	
	
}
