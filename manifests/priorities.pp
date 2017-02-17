# Class: yumconfig::priorities
#
#  This class manages yum priorities
#
# Requires:
#  An OS that uses yum as its primary package manager
#
# Sample Usage:
#  include yumconfig::priorities
#
class yumconfig::priorities inherits yumconfig::params {

    package {$yumconfig::params::yum_priorities_package: ensure => latest }

}
