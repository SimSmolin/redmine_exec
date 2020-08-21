class ExecController < ApplicationController

  def get_file
    send_data  ExecResult.sending_data[User.current.login],
               filename: User.current.login + '.ovpn',
               type: 'txt',
               disposition: 'attachment'
    ExecResult.exit_status = nil
    ExecResult.sending_data = nil
  end

  def run_script
    cmd = './plugins/redmine_exec/config/exec_script.sh'
    ExecResult.sending_data ||= {}
    ExecResult.exit_status ||= {}
    ExecResult.sending_data[User.current.login] = `#{cmd} #{User.current.login}`
    ExecResult.exit_status[User.current.login] = $CHILD_STATUS.exitstatus
    if ExecResult.exit_status[User.current.login] == 0
      flash[:notice] = l(:уour_file_has_been_prepared_for_download) + User.current.login + '.ovpn'
    else
      flash[:error] = l(:your_file_hast_been_prepared)
    end
    redirect_back_or_default my_account_path
  end
end
