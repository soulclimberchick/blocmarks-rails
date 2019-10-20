class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_many :likes, dependent: :destroy

  before_validation :format_url

  validates :url, presence: true
  validates :url, uniqueness: true
  validates :url, length: { minimum: 1 }

  def format_url
    unless self.url[/\Ahttp:\/\//] || self.url[/\Ahttps:\/\//]
      self.url = "http://#{self.url}"
    end
  end
end
