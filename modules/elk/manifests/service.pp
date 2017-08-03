class elk::service {
	
	service { elasticsearch:
		ensure => running,
	}

	service { logstash:
		ensure => running,
	}

	service { kibana:
		ensure => running,
	}

}
