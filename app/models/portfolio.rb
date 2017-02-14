class Portfolio < ApplicationRecord
  has_many :projects, dependent: :destroy
  belongs_to :user
  after_create :set_slug

  def set_slug
    self.update(user_slug: self.user.slug)
  end
end
