class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    includes(boats: :classifications).where('classifications.name = ?', 'Catamaran')
  end

  def self.sailors #returns captains with sailboats
    includes(boats: :classifications).where('classifications.name = ?', 'Sailboat').uniq
  end

  def self.motorboaters
    includes(boats: :classifications).where('classifications.name = ?', 'Motorboat').uniq
    # includes(boats: :classifications).where(classifications: {name: "Motorboat"})
  end

  def self.talented_seafarers #returns captains of motorboats and sailboats('sailors')
    where("id IN (?)", self.sailors.pluck(:id) & self.motorboaters.pluck(:id))
# where("id IN (?)", self.sailors.pluck(:id) & self.motorboat_operators.pluck(:id))
  end

end
