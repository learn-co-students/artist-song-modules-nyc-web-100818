module Paramable

  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end # End of InstanceMethods submodule

end # END OF PARAMABLE MODULE
