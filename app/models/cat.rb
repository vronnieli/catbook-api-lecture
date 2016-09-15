class Cat < ApplicationRecord

  validates :name, :weight, presence: true\

  has_many :cat_hobbies
  has_many :hobbies, through: :cat_hobbies

  def fat?
    self.weight >= 10 ? true : false
  end

  def learn_to(hobby)
    self.hobbies << hobby
  end

end
