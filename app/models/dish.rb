class Dish < ApplicationRecord
  belongs_to :category
  belongs_to :user

  def self.search(search)
    if search
      find_by(:all, conditions: ['title LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
