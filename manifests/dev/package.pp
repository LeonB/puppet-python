class python::dev::package {

    package  { $python::dev::packages:
        ensure   => $python::dev::ensure,
        provider => 'pip',
    }

}
