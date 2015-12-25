# Class: discover
# ===========================
#
# Used to install the Discover tool on Kali.
#
# Parameters
# ----------
#
# * `install`
# The directory where you want to install discover
#
# Variables
# ----------
#
# N/A
#
# Examples
# --------
#
# @example
#
#    class { 'discover':
#      install_location => '/opt/discover',
#    }
#
# Authors
# -------
#
# l50 <jayson.e.grace@gmail.com>
#
# Copyright
# ---------
#
# Copyright 2015 l50 
#
class discover(
  $install_location='/opt/discover',
) {

  vcsrepo { $install_location:
    ensure   => present,
    provider => git,
    source   => 'git://github.com/leebaird/discover.git',
    require  => Class['git'],
    before   => Exec['install_discover']
  }

  exec { 'install_discover':
    command  => "$install_location/setup.sh",
    provider => 'shell',
  }
}
