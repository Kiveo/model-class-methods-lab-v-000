class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications

  def self.first_five
    limit(5).order('id asc')
  end

  def self.dinghy
    where("length < ?", 20)
  end

  def ship
    where("length >= ?", 20)
  end

end
