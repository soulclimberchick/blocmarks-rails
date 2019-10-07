class Bookmark < ApplicationRecord
  belongs_to :topic
  validates :url, presence: true
  validates :url, uniqueness: true
  validates :url, length: { minimum: 1 }
  before_validation :format_url

  def format_url
    unless self.url[/\Ahttp:\/\//] || self.url[/\Ahttps:\/\//]
      self.url = "http://#{self.url}"
    end
  end
end
