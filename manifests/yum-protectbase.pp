# Class: yumconfig::yum-protectbase
#
#  This class manages yum protectbase
#
# Requires:
#  An OS that uses yum as its primary package manager
#
# Sample Usage:
#  include yumconfig::yum-protectbase
#
class yumconfig::yum-protectbase inherits yumconfig::params {

    package {$yumconfig::params::yum_protectbase_package: ensure => latest }

}
