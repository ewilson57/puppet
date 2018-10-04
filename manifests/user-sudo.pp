sudo::rule { "extra_rule":
  ensure   => present,
  who      => 'ewilson',
  runas    => 'root', # default runas user is root, please change to override.
  commands => "/usr/sbin/systemctl",
  nopass   => false, #
  setenv   => false,
  comment  => "what ever you like",
}
