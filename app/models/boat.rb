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

  def self.ship
    where("length >= ?", 20)
  end

  def self.alphabetical_order
  end
  def self.last_three_alphabetically
    a = order(:name)
    a.limit(3).order('desc')
  end

end
