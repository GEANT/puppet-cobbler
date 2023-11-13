# == Class cobbler::install
#
# Installs packages required to deploy cobbler
#
# === Parameters
#
# [*package*]
#   The package name or array of packages that provides cobbler.
#
#   Type: String or Array
#   Default: check cobbler::params::package
#
# [*package_ensure*]
#   The state of the package.
#
#   Type: String
#   Values: present, installed, absent, purged, held, latest
#   Default: installed
#
# == Authors
#
# Anton Baranov <abaranov@linuxfoundation.org>
class cobbler::install (
  Variant[String, Array] $package,
  Enum['present', 'installed', 'absent', 'purged', 'held', 'latest'] $package_ensure,
) {
  package { $package:
    ensure => $package_ensure,
  }
}
