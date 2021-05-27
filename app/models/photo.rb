# == Schema Information
#
# Table name: photos
#
#  id           :bigint           not null, primary key
#  picture      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  apartment_id :integer
#
class Photo < ApplicationRecord
  belongs_to :apt, class_name: "Apartment", counter_cache: true

  validates :picture, presence: true
  validates :apt_id, presence: true
end
