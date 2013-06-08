# Class: python::params
#
# This class defines default parameters used by the main module class python
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to python class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class python::dev::params {

  ### Application related parameters

  $packages = $::operatingsystem ? {
    default => []
  }

  $enabled = true

}
