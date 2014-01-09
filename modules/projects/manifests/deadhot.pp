class projects::deadhot{
include nginx
	
	boxen::project {'deadhot':
		nginx	=> true,
		source	=> 'jhuston/deadhot.net'
	}
}