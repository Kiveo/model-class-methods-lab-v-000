class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    #EX: User.includes(:posts).where('posts.name = ?', 'example').references(:posts)
    includes(:boats, :classifications).where('classifications.name = ?', 'Catamaran')
  end



end
