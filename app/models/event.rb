class Event < ApplicationRecord
	validates :title, presence: true
  attr_accessor :date_range
  #has_many :reservations
  #belongs_to :user
  
  validates :avatar,
    attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
    attachment_size: { less_than: 5.megabytes }

  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '300x300#',
    medium: '500x500>'
}

  def all_day_event?
    self.start == self.start.midnight && self.end == self.end.midnight ? true : false
end
end
