module Findable

  module ClassMethods
    def find_by_name(name)
      self.all.detect{|a| a.name == name}
      #self here is the Class so self.all => Class.all,
      #what Class depends on where we extend this
    end
  end

end # END OF FINDABLE MODULE
