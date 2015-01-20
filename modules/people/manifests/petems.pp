class people::petems {

  $home     = "/Users/${::boxen_user}"
  $projects = "${home}/projects"
  $dotfiles = "${projects}/dotfiles"

  file { $projects:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'petems/dotfiles',
    require => File[$projects]
  }

}