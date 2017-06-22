class Album < ActiveRecord::Base
  validates :album, uniqueness: true, presence: true
  has_many :photos
  belongs_to :user

end
