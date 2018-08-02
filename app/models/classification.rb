class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    all
  end

  def self.longest #longest boat.
  end

  #a method to collect the name == catamaran instances
  def self.catamarans 
    all.where('name = ?', "catamaran")
  end 

end
