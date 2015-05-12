define iptablesrules::rule (

  $rule,
  $num = 500

) {

  file {"/etc/iptables.d/${num}-${name}":
    ensure  => file,
    content => "\n${rule}\n",
    mode    => '0644',
    owner   => root,
    group   => root,
    notify  => Exec['iptablessave'],
  }
}
