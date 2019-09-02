class Category < ApplicationRecord
  belongs_to :parent, class_name: "Category", foreign_key: :parent_id, inverse_of: :children, optional: true
  has_many :children, class_name: "Category", foreign_key: :parent_id, inverse_of: :parent
end
