# Class: yumconfig::protectbase
#
#  This class manages yum protectbase
#
# Requires:
#  An OS that uses yum as its primary package manager
#
# Sample Usage:
#  include yumconfig::protectbase
#
class yumconfig::protectbase inherits yumconfig::params {

    package {$yumconfig::params::yum_protectbase_package: ensure => latest }

}
