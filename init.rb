require 'redmine'
require 'i18n'
require_relative 'lib/user_patch'

reloader = defined?(ActiveSupport::Reloader) ? ActiveSupport::Reloader : ActionDispatch::Reloader

reloader.to_prepare do
  User.send :include, UserPatch
end

Redmine::Plugin.register :redmine_exec do
  name 'Redmine Exec plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end
