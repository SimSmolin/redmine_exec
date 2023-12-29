require_dependency 'user'

module ExecUserPatch # :nodoc:
  def self.included(base)

    base.class_eval do
      unloadable
      safe_attributes 'ovpn_key_count'

      validates_length_of :ovpn_key_count, :maximum => 1, message: "value %{value} is not in the range 0..5"
      validates_format_of :ovpn_key_count, :with => /\A[0-5]/, message: "value %{value} is not in the range 0..5"
    end
  end

end