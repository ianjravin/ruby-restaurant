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

class Order < ActiveRecord::Base
  belongs_to :food_item

  validates :name, :phone, :address, presence: true
  validates :phone, numericality: true
end
