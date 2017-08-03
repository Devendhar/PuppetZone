class elk::configure {
	
	$elkIP = hiera('elk::serverIP')
	$mem = hiera('elk::jvmMemOpt')

	file { '/etc/pki/tls/openssl.cnf':
		owner => 'root',
		group => 'root',
		content => template("elk/openssl.cnf.erb"),
	}

	file { '/etc/logstash/conf.d/filter.conf':
		owner => 'root',
		group => 'root',
		content => template("elk/filter.conf.erb"),
	}

	file { '/etc/logstash/conf.d/output.conf':
		owner => 'root',
		group => 'root',
		mode => '660',
		content => template("elk/output.conf.erb"),
	}

	file { '/etc/logstash/conf.d/input.conf':
		owner => 'root',
		group => 'root',
		content => template("elk/input.conf.erb"),
	}

	file { '/etc/elasticsearch/jvm.options':
		owner => 'root',
		group => 'elasticsearch',
		content => template("elk/jvm.options.erb"),
	}

}
