class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators #where captain > boats > boat_classifications = catamaran

  end

end
