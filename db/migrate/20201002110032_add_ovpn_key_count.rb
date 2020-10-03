class AddOvpnKeyCount < ActiveRecord::Migration
  def up
    # add count ovpn-key for users
    add_column :users, :ovpn_key_count, :integer, default: 0, null: false
    # User.update_all ovpn_key_count: 0
  end

  def down
    remove_column :users, :ovpn_key_count
  end
end
