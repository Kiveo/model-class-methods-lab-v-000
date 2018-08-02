class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    includes(boats: :classifications).where('classifications.name = ?', 'Catamaran')
  end

  def self.sailors #returns captains with sailboats
    includes(boats: :classifications).where('classifications.name = ?', 'Sailboat').uniq
  end

  def self.motorboaters
    includes(boats: :classifications).where('classifications.name = ?' 'Motorboat').uniq
  end

  def self.talented_seafarers #returns captains of motorboats and sailboats('sailors')
    motorboat_ids = self.motorboaters.pluck(:id)
    sailor_ids = self.sailors.pluck(:id)
    all.where("id IN (?)", sailor_ids & motorboat_ids)
  end

end
