class python::dev(
  $packages = params_lookup( 'packages' ),
  $gems = params_lookup( 'gems' ),
  $enabled  = params_lookup( 'enabled' ),
) inherits python::dev::params {

  # install python before this
  Class['python'] -> Class['python::dev']

  $ensure = $enabled ? {
    true  => present,
    false => absent
  }

  include python::dev::package, python::dev::config
}
