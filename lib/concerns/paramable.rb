module Paramable
  module InstanceMethods

    def to_param
      name.downcase.gsub(' ', '-')
    end

  end # end of ClassMethods
end # end of Paramble
