class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators #where captain > boats > boat_classifications = catamaran
    captain_boats = boats.collect {|boat| boat.captain_id == id}
    # captain_boats compare to boat_classifications
  end

end
