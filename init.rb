require 'redmine'
require 'i18n'
require_relative 'lib/exec_user_patch'

reloader = defined?(ActiveSupport::Reloader) ? ActiveSupport::Reloader : ActionDispatch::Reloader

reloader.to_prepare do
  User.send :include, ExecUserPatch
end

Redmine::Plugin.register :redmine_exec do
  name 'Redmine Exec plugin'
  author 'Sergey Melnikov'
  description 'execute shell script and download result'
  version '0.0.2'
  url 'http://example.com/path/to/plugin'
  author_url 'https://github.com/SimSmolin'

  settings :default => {'empty' => true}, :partial => 'settings/plugin_setting'
end
