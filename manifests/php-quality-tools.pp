class php-quality-tools {
	# PHP
	package { "php53u-pear":
		ensure => present,
		require => Yumrepo["IUS"]
	}

	# PEAR Package
	package { "PEAR": 
		provider => "pear",
		require => Package["php53u-pear"]
	}

	# PHPUnit
	package { "PHPUnit":
		provider => "pear",
		source => "pear.phpunit.de/PHPUnit",
		ensure => installed,
		require => Package["PEAR"]
	}

	# Pdepend
	package { "PHP_Depend":
		provider => "pear",
		source => "pear.pdepend.org/PHP_Depend-beta",
		ensure => installed,
		require => Package["PEAR"]
	}

	# PHPMD
	package { "PHP_PMD":
		provider => "pear",
		source => "pear.phpmd.org/PHP_PMD",
		ensure => installed,
		require => Package["PHP_Depend"]
	}

	# PHP CPD
	package { "Base":
		provider => "pear",
		source => "components.ez.no/Base",
		ensure => installed,
		require => Package["PEAR"]
	}

	package { "ConsoleTools":
		provider => "pear",
		source => "components.ez.no/ConsoleTools",
		ensure => installed,
		require => Package["Base"]
	}

	package { "File_Iterator":
		provider => "pear",
		source => "pear.phpunit.de/File_Iterator",
		ensure => installed,
		require => Package["PEAR"]
	}

	package { "PHPCPD":
		provider => "pear",
		source => "pear.phpunit.de/phpcpd",
		ensure => installed,
		require => Package["Base"]
	}

	# Phing
	package { "Phing":
		provider => "pear",
		source => "pear.phing.info/phing",
		ensure => installed,
		require => Package["PEAR"]
	}
}
