# Class: vision_rsnapshot
# ===========================
#
# Manage rsnapshot config and rtcwake_shutdown (offline backup)
#
# Parameters
# ----------
#
# @param hosts List of hosts/paths to rsnapshot
#

class vision_rsnapshot (

  Hash $hosts,

) {

  class { 'rsnapshot':
    hosts => $hosts,
  }

  # for /usr/sbin/rtcwake executable
  package { 'util-linux':
    ensure => present,
  }

  # script for waking machine up at a particular time
  file { '/usr/local/sbin/rtcwake_shutdown':
    ensure  => present,
    mode    => '0751',
    owner   => root,
    group   => root,
    content => template('vision_rsnapshot/rtcwake_shutdown'),
  }

}
