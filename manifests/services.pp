class iptablesrules::services {
  require(iptablesrules::config)
  require(iptablesrules::packages)

  service { $iptablesrules::params::services:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }

  exec { 'iptablessave':
    command     => 'cat /etc/iptables.d/* | iptables-restore && service iptables save',
    path        => ['/usr/local/sbin', '/usr/local/bin', '/sbin', '/bin', '/usr/sbin', '/usr/bin'],
    refreshonly => true,
  }
}
