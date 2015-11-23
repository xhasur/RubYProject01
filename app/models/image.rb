class Image < ActiveRecord::Base
  enum category: %w(portrait landscape city\ exploration nature animals)

  validates :name, :category, presence: true

  def tags_texts
    #self.tags.join(', ')
  end

  def tags_texts=(value)
    self.tags = value.split(',').map{ |tag| tag.strip }
  end
end