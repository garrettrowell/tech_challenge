class tech_challenge::repo {
  package { 'git':
    ensure => present,
    before => Vcsrepo['/opt/html'],
  }

  file { '/opt/html':
    ensure => directory,
    before => Vcsrepo['/opt/html'],
  }

  vcsrepo { '/opt/html':
    ensure   => latest,
    provider => git,
    source   => 'git://github.com/puppetlabs/exercise-webpage.git',
    revision => 'master',
    notify   => Service['nginx'],
  }
}
