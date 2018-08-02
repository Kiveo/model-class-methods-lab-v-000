class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    #  includes(boats: :classifications).where(classifications: { name: 'Catamaran' })
    # Article.includes(:comments).where(comments: { visible: true })
    includes(boats: :classifications).where(classifications: {name: 'catamaran'})
  end



end
