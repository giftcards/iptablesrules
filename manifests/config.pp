class iptablesrules::config {
  require(iptablesrules::packages)

  File {
    ensure  => file,
    owner => root,
    group => root,
    mode  => '0644',
  }

  file { '/etc/iptables.d':
    ensure  => directory,
    mode    => '0755',
    recurse => true,
    purge   => true,
  }
  file { '/etc/iptables.d/000-policy':
    source => 'puppet:///modules/iptablesrules/000-policy',
    notify => Exec['iptablessave'],
  }
  file { '/etc/iptables.d/999-commit':
    source => 'puppet:///modules/iptablesrules/999-commit',
    notify => Exec['iptablessave'],
  }
}
