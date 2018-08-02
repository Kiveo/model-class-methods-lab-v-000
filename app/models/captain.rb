class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    #EX: Article.includes(:comments).where("comments.visible = true").references(:comments)
    includes(:classifications).where("classifications.name = ?", "catamaran").references(:classifications)
  end



end
