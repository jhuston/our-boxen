class people::jhuston::applications {
    
    include chrome
    include sublime_text_2
    include notational_velocity::nvalt
    include lightpaper

    include zsh
    include wget
    include ohmyzsh

    #iTerm2
    include iterm2::stable
    include iterm2::colors::solarized_dark

    package { 'tmux':
      install_options => '--fresh'
    }

    package { 'sox':
        provider => 'homebrew'
    }
    package { 'ffmpeg':
        provider => 'homebrew'
    }
}
