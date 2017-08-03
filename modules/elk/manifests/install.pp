class elk::install inherits elk::params{
	
	$packages.each |String $package| {
	package { $package:
		provider => rpm,
		ensure => present,
		source => "/opt/${package}",
	}
	}

	package { filebeat:
		provider => rpm,
		ensure => present,
		source => '/opt/filebeat-5.5.1-x86_64.rpm',
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
