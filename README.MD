## Synopsis  
  
Puppet module intended to bring debian style rule priority configuration to iptables. Sets implicit allow by default.  
  
## Example  
  
iptables::rule definition allows the creation of prioritized iptables rules between 001 and 998.  
  
## Motivation  
  
Needed a simple way to in most cases disable all iptables rules while still allowing a certain amount of blacklisting.  
  
## Installation  
  
Tested on CentOS 6.  
Does not require any special repositories.  
  
## API Reference  
  
iptables::rule  
  rule => iptables command options  
  num  => 3 digit priority between 001 and 998. Defaults to 500.  
  
## Contributors  
  
Ryan Munz for Giftcards.com - May 2015  
