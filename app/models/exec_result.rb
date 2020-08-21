class ExecResult < ActiveRecord::Base

  class << self
    attr_accessor :exit_status, :sending_data
  end

end
