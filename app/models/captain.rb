class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    #EX: Article.includes(:comments).where("comments.visible = true").references(:comments)
    # Article.includes(:comments).where(comments: { visible: true })
    includes(:classifications).where(name: {name: 'catamaran'})
  end



end
