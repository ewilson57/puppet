include sudo

sudo::rule { 'ewilson_sudo':
  ensure   => present,
  who      => 'ewilson',
  runas    => 'root', # default runas user is root, please change to override.
  commands => '/opt/puppetlabs/bin/puppet',
  nopass   => false, #
  setenv   => false,
  comment  => 'Puppet administrator',
}
