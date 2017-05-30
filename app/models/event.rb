class Event < ApplicationRecord
	validates :title, presence: true
	validates :seats, numericality: { greater_than_or_equal_to: 0 }
  attr_accessor :date_range
  
  has_many :reservations
  has_many :testusers, through: :reservations 
  #belongs_to :testuser #user
  
  validates :avatar,
    attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
    attachment_size: { less_than: 5.megabytes }

  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '300x300#',
    custom:'150x150>',
    medium: '500x500>'
}, default_url: "/images/:style/missing.png"

  def all_day_event?
    self.start == self.start.midnight && self.end == self.end.midnight ? true : false
end
end
