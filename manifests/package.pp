class python::package {

    package  { $python::packages:
        ensure   => $python::ensure,
    }

}
