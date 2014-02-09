class yumconfig::params {
  case $::operatingsystem {
    'centos','scientific','redhat': {
      if ($::operatingsystemrelease < 6) {
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
