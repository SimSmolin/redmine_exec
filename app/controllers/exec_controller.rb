# frozen_string_literal: true
class ExecController < ApplicationController

  def get_file
    num_key = params[:id]
    file_name = num_key.eql?('0') ? User.current.login : User.current.login + num_key.to_s
    if ExecResult.sending_data
      send_data  ExecResult.sending_data[file_name],
                 filename: file_name + '.ovpn',
                 type: 'txt',
                 disposition: 'attachment'
    end
  end

  # def run_script
  #   ExecResult.sending_data ||= {}
  #   ExecResult.exit_status ||= {}
  #   ExecResult.sending_data[User.current.login] = `#{ExecResult::SCRIPT_PATH} #{User.current.login}`
  #   ExecResult.exit_status[User.current.login] = $CHILD_STATUS.exitstatus
  #   if ExecResult.exit_status[User.current.login] == 0
  #     flash[:notice] = l(:уour_file_has_been_prepared_for_download) + User.current.login + '.ovpn'
  #   else
  #     flash[:error] = l(:your_file_hast_been_prepared)
  #   end
  #   redirect_back_or_default my_account_path
  # end
end
