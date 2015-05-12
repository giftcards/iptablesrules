class iptablesrules::packages {

  package {$iptablesrules::params::packages: ensure  => installed, }

}
