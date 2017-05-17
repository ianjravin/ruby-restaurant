# == Schema Information
#
# Table name: food_items
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  price       :decimal(, )
#  section     :string
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class FoodItem < ActiveRecord::Base
  SECTIONS = ["Breakfast", "Lunch", "Dinner", "Drinks"]

  validates :name, :description, :image, presence: true
  validates :price, numericality: true
  validates :section, inclusion: { in: SECTIONS }
end
