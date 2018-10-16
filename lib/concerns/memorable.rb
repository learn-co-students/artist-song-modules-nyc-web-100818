module Memorable

  module ClassMethods
    def reset_all
       self.all.clear
     end

     def count
       self.all.count
     end
  end # End of ClassMethods Submodule

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end # End of InstanceMethods Submodule
end # End of Memorable Module
