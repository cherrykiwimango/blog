class Post < ApplicationRecord
  def to_param
    slug
  end

  validates :slug, presence: true, uniqueness: true

  before_validation :set_slug, on: :create

  def set_slug
    self.slug = title.to_s.parameterize + "-#{SecureRandom.alphanumeric(10)}"
  end
end
