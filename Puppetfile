# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

#Shortcut for my modules
def jhuston(name, version)
  mod name, version, :github_tarball => "jhuston/puppet-#{name}"
end


# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.3", :repo => "razic/puppet-dnsmasq"
github "autoconf",   "1.0.0"
github "foreman",    "1.0.0"
github "gcc",        "2.0.100"
github "git",        "1.3.7"
github "go",         "1.0.0"
github "homebrew",   "1.6.0"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.3"
github "nodejs",     "3.3.0"
github "openssl",    "1.0.0"
github "phantomjs",  "2.0.2"
github "pkgconfig",  "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.7.2"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "osx",        "2.2.4", :repo => "jhuston/puppet-osx"
github "zsh",        "1.0.0"
github "tmux",       "1.0.2"
github "wget",       "1.0.0"
github "ohmyzsh",    "0.0.1", :repo => "haelmy/puppet-ohmyzsh"

#apps
github "notational_velocity", "1.1.1"
github "chrome",     "1.1.2"
github "firefox",    "1.0.6"
github "sublime_text_2", "1.1.2"
github "iterm2",     "1.0.6"
github "lightpaper",  "0.0.1", :repo => "jhuston/puppet-lightpaper"
