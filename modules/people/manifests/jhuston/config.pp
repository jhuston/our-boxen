class people::jhuston::config {

    git::config::global { 'user.email': 
        value => 'huston.jeff@gmail.com'
    }

    git::config::global { 'user.name':
        value => 'Jeff Huston'
    }

    git::config::global { 'color.ui':
        value => 'auto'
    }

    # OSX settings
    include osx::sound::ui
    include osx::global::disable_key_press_and_hold
    include osx::global::enable_keyboard_control_access
    include osx::global::expand_print_dialog
    include osx::global::expand_save_dialog
    include osx::dock::2d
    include osx::finder::show_external_hard_drives_on_desktop
    include osx::finder::show_removable_media_on_desktop
    include osx::finder::unhide_library
    include osx::universal_access::ctrl_mod_zoom
    include osx::disable_app_quarantine
    include osx::no_network_dsstores
}