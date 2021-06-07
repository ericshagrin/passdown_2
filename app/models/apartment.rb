# == Schema Information
#
# Table name: apartments
#
#  id            :bigint           not null, primary key
#  address       :string
#  description   :text
#  furniture_amt :string
#  num_bath      :integer          default(0)
#  num_bdrms     :integer          default(0)
#  price         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#
class Apartment < ApplicationRecord
  belongs_to :user

  validates :price, numericality: { greater_than: 1 }
  validates :price, presence: true
  validates :num_bdrms, presence: true
  validates :num_bath, numericality: { greater_than: 0 }
  validates :num_bath, presence: true
  validates :furniture_amt, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :user_id, presence: true
end


