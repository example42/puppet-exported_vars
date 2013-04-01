class exported_vars {

  include exported_vars::params

  file { $exported_vars::params::basedir:
    ensure => directory,
    owner   => 'puppet',
    group   => 'puppet',
    mode    => '0755',
  }
  File <<| tag == 'exported_var' |>>

}
