class Captain < ActiveRecord::Base
  has_many :boats

  def self.captain_boats
    capt_boats = boats.collect {|boat| boat.captain_id == id}
  end

  def self.catamaran_operators 
    #captain -has_many- boats -has_many- boat_classifications -belongs_to- classification where name == catamaran
    # captain_boats compare to boat_classifications 
    # that contain the classification.catamaran_ids
    #where b_c has catamaran_ids , see if any == captain_boats, return boats that do
  end

end
