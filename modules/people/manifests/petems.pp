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

  include sublime_text_3
  include sublime_text_3::package_control

  sublime_text_3::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }

}
