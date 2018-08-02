class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    includes(boats: :classifications).where('classifications.name = ?', 'Catamaran')
  end

  def self.sailors #returns captains with sailboats
    includes(boats: :classifications).where('classifications.name = ?', 'Sailboat').uniq
  end

  def self.motorboaters #hah.
    includes(boats: :classifications).where('classifications.name = ?' 'Motorboat').uniq
  end

  def self.talented_seafarers #returns captains of motorboats and sailboats('sailors')
    motorboaters.pluck(:id)
  end

end
