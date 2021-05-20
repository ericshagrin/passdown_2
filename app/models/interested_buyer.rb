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
end


