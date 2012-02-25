require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']
source 'http://rubygems.org'
gem 'rails', '~> 3.2'
group :assets do
  gem 'sass-rails', "  ~> 3.2.0"
  gem 'coffee-rails', "~> 3.2.0"
  gem 'uglifier'
  gem "compass", "~> 0.12.alpha.0"
  gem 'compass_twitter_bootstrap', "~> 2.0.0"
end
gem 'jquery-rails'
if HOST_OS =~ /linux/i
  gem 'therubyracer', '>= 0.8.2'
end
gem "haml", ">= 3.1.2"
gem "tabs_on_rails"
gem "haml-rails", ">= 0.3.4", :group => :development
gem "rspec-rails", ">= 2.6.1", :group => [:development, :test]
gem "database_cleaner", ">= 0.6.7", :group => :test
gem "mongoid-rspec", ">= 1.4.4", :group => :test
gem "guard", ">= 0.6.2", :group => :development
case HOST_OS
  when /darwin/i
    gem 'rb-fsevent', :group => :development
    gem 'growl', :group => :development
  when /linux/i
    gem 'libnotify', :group => :development
    gem 'rb-inotify', :group => :development
  when /mswin|windows/i
    gem 'rb-fchange', :group => :development
    gem 'win32console', :group => :development
    gem 'rb-notifu', :group => :development
end
gem "guard-bundler", ">= 0.1.3", :group => :development
gem "guard-rails", ">= 0.0.3", :group => :development
gem "guard-livereload", ">= 0.3.0", :group => :development
gem "guard-rspec", ">= 0.4.3", :group => :development
gem "bson_ext", ">= 1.4.0"
gem "mongoid", ">= 2.3.0"
gem "devise", ">= 1.4.7"
gem "rails-footnotes", ">= 3.7", :group => :development
gem "redcarpet", "2.0.0b5"
gem "loofah"
gem "twitter_bootstrap_form_for", :git => "git://github.com/stouset/twitter_bootstrap_form_for.git", :ref => 'a1ed21787872a1469d0e57a632f5442e3106d334'
gem "ruby-debug19", :group => [:development, :test]
