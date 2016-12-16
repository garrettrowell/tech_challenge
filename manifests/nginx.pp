class tech_challenge::nginx {
  class { 'nginx':
    manage_repo    => true,
    package_source => 'nginx-stable',
  }

  nginx::resource::vhost { 'www.exercise-webpage.com':
    www_root    => '/opt/html/',
    listen_port => '8000',
  }
}
