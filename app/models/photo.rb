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
end
