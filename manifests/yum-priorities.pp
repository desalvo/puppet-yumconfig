# Class: yumconfig::yum-priorities
#
#  This class manages yum priorities
#
# Requires:
#  An OS that uses yum as its primary package manager
#
# Sample Usage:
#  include yumconfig::yum-priorities
#
class yumconfig::yum-priorities inherits yumconfig::params {

    package {$yumconfig::params::yum_priorities_package: ensure => latest }

}
