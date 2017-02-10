# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  cost       :integer
#  size       :string
#  color      :string
#  gender     :string
#  brand      :text
#  info       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ActiveRecord::Base
  has_many :favourites
  has_many :reviews
  has_many :line_items
  has_many_and_belongs_to :categories
end
