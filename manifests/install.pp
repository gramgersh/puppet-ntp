class ntp::install (
  String $package_name = $::ntp::package_name,
  String $ensure       = $::ntp::ensure,
) {
  package { 'ntp-package':
    ensure => $ensure,
    name   => $package_name,
  }
}
