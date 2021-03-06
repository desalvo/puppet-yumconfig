class yumconfig::params {
  case $::operatingsystem {
    'centos','scientific','redhat': {
      if (($::operatingsystemmajrelease + 0) < 6) {
        $yum_priorities_package = "yum-priorities"
        $yum_protectbase_package = "yum-protectbase"
      } else {
        $yum_priorities_package = "yum-plugin-priorities"
        $yum_protectbase_package = "yum-plugin-protectbase"
      }
    }
    'fedora': {
        $yum_priorities_package = "yum-plugin-priorities"
        $yum_protectbase_package = "yum-plugin-protectbase"
    }
    default: {
      fail("Unsupported platform: ${::osfamily}/${::operatingsystem}")
    }
  }
}
