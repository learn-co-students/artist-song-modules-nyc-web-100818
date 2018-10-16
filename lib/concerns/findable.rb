module Findable 
  def find_by_name(name) 
    self.all.find do |instance|
      instance.name == name 
    end 
  end 
end 