class people::jhuston {
    
    notify { 'class people::jhuston declared!': }

    include people::jhuston::applications
    include people::jhuston::config
    include people::jhuston::dotfiles


}
