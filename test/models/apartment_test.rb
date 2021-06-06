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
require "test_helper"

class ApartmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
