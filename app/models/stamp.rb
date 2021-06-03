class Stamp < ApplicationRecord
  belongs_to :stampbook
  belongs_to :location
  validates :stampbook_id, uniqueness: { scope: :location_id }
  validates :stamp_status, inclusion: [true, false]
  has_one_attached :user_stamp_photo
end
