# frozen_string_literal: true

# Class for  shell-script execute
class ExecResult < ActiveRecord::Base
  SCRIPT_PATH = './plugins/redmine_exec/config/exec_script.sh'

  class << self
    attr_accessor :exit_status, :sending_data
  end
end
