class Topic < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :delete_all
  validates_associated :bookmarks
  validates :title, presence: true
  validates :title, uniqueness: true

  after_validation :format_topic

  def format_topic
    self.title = "##{self.title}"
  end

end
