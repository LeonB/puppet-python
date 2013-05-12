class python::package {

    # Install python before this
    Class['python'] -> Class['flexget::package']

    package  { $python::packages:
        ensure   => $python::ensure,
        provider => 'pip',
    }

}
