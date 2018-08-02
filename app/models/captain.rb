class Captain < ActiveRecord::Base
  has_many :boats

  def self.captain_boats
    capt_boats = boats.collect {|boat| boat.captain_id == id}
  end

  def self.catamaran_operators #where captain > boats > boat_classifications = catamaran
    # captain_boats compare to boat_classifications that contain the classification_id == catamaran
  end

end
