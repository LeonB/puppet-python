class python(
    $package_name = params_lookup( 'package_name' ),
    $enabled       = params_lookup( 'enabled' )
  ) inherits python::params {

    $ensure = $enabled ? {
        true => present,
        false => absent
    }

    include python::package, python::config
}
