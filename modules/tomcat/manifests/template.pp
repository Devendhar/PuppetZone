class tomcat::template inherits tomcat::service {

	$tomcat_username = hiera('tomcat::package')
	$tomcat_password = hiera('tomcat::package')
	

	file { '/etc/tomcat/tomcat-users.xml':
		owner => 'root',
		group => 'tomcat',
		content => template("tomcat/tomcat-users.xml.erb"),
		notify => Service[tomcat],
	}

	file { '/var/lib/tomcat/webapps/jenkins.war':
		source => "https://updates.jenkins-ci.org/download/war/2.70/jenkins.war",
		ensure => present,
	}
}
