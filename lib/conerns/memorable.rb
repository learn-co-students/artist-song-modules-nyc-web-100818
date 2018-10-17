module Memorable
# module ClassMethods
  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

end
