class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    includes(boats: :classifications).where('classifications.name = ?', 'Catamaran').references(:classifications)
  end

  def self.sailors #returns captains with sailboats
    includes(boats: :classifications).where('classifications.name = ?', 'Sailboat').references(:classifications).uniq
  end

end
