class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    all
  end

  def self.longest #longest boat.
  end

  #a method to collect the name == catamaran instances
  def self.catamaran_ids
    catas = all.where('name = ?', "catamaran")
    catas.collect {|cata| cata.id}
  end

end
