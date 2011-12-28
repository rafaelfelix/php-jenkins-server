class php-jenkins {
	package { "java-1.6.0-openjdk":
		ensure => installed
	}
	include jenkins
}
