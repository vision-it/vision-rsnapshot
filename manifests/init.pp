# Class: vision_rsnapshot
# ===========================
#
# Parameters
# ----------
#
# Examples
# --------
#
# @example
# contain ::vision_rsnapshot
#

class vision_rsnapshot (

  Hash $hosts,

) {

  class { 'rsnapshot':
    hosts => $hosts,
  }

}
