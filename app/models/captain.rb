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
  def boats_belonging_to_captain(captain)
    cap_boat_list = captain.captain_boats #returns boat collection where boat.captain_id == captain.id
    cap_boat_list.collect {|boat| boat_classifications.boat_id == boat.id}
    #need boatss where classification.catamaran_ids == boat_classifications.classification_id
  end

end
