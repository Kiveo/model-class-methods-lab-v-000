class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    includes(:classifications).where('name = ?', "catamaran")
  end



end
