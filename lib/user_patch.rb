require_dependency 'user'

module UserPatch # :nodoc:
  def self.included(base)

    base.class_eval do
      unloadable
      safe_attributes 'ovpn_key_count'

      # validates_length_of :ovpn_key_count, :maximum => 1
      validates_inclusion_of :ovpn_key_count, in: 0..5, message: "value %{value} is not in the range 0..5"
    end
  end

end