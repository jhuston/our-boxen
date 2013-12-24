class people::jhuston::config {
    
    git::config::global { 'user.email': 
        value => 'huston.jeff@gmail.com'
    }

    git::config::global { 'user.name':
        value => 'Jeff Huston'
    }
}