# == Schema Information
#
# Table name: interested_buyers
#
#  id           :bigint           not null, primary key
#  email        :string
#  name         :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  apartment_id :integer
#
class InterestedBuyer < ApplicationRecord
  belongs_to :apt, class_name: "Apartment", counter_cache: true
  
  validates :name, presence: true
  validates :email, presence: true
  validates :apt_id, presence: true
end


