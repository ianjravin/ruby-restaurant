# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  name         :string
#  phone        :string
#  address      :text
#  food_item_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
