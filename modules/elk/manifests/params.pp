class elk::params {
	$packages = $facts['os']['family'] ? {
		
		#'RedHat' => 'elasticsearch-5.5.1.rpm',
		'RedHat' => ['elasticsearch-5.5.1.rpm', 'logstash-5.5.1.rpm', 'kibana-5.5.1-x86_64.rpm'],
	}
}
