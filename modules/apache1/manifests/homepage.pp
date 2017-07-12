class apache1::homepage ( $file_local_name=index, $homepage_location="/var/www/html/index.html") {

	file { $homepage_location:
		ensure => present,
		content => file("apache1/${file_local_name}.html"),
		notify => Service["$apache1::params::packageName"],
	}
	
}	
