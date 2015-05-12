class iptablesrules inherits iptablesrules::params {
  include iptablesrules::packages
  include iptablesrules::config
  include iptablesrules::services
}
