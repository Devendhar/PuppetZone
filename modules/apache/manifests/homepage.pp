class apache::homepage($file_local_name="index",$homepage_location="/var/www/html/index.html") {

	file { $homepage_location:
		ensure => file,
		content => file("apache/${file_local_name}.html"),
		notify => Service["$apache::params::package"],
	}

}
