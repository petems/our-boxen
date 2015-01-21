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

  sublime_text_3::package { 'GitCommitMsg':
    source => 'cbumgard/GitCommitMsg'
  }

  sublime_text_3::package { 'Puppet':
    source => 'russCloak/SublimePuppet'
  }

  sublime_text_3::package { 'GitGutter':
    source => 'jisaacks/GitGutter'
  }

  class {'packer':}

  vagrant::plugin { 'vbguest':}

  vagrant::plugin { 'cachier':}

}
