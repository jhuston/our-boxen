class people::jhuston::dotfiles {
	
	$home = "/Users/${::boxen_user}"
	$dotfiles_dir = "${boxen::config::srcdir}/dotfiles"

	repository {$dotfiles_dir:
		source => "jhuston/dotfiles"
	}

  file { "${home}/.zshrc":
    ensure  => link,
    target  => "${dotfiles_dir}/.zshrc",
    require => Repository[$dotfiles_dir]
  }

}