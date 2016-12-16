class tech_challenge::selinux {
  selinux::module { 'nginx':
    ensure      => 'present',
    source      => 'puppet:///modules/tech_challenge/local_nginx.te',
    syncversion => false,
    before      => Class['tech_challenge::nginx'],
  }
}
