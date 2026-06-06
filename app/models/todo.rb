class Todo < ApplicationRecord
  CATEGORIES = %w[work study home\ chores personal].freeze

  validates :category, inclusion: { in: CATEGORIES }, allow_nil: true

  scope :with_category, ->(category) {
    category.present? && category != "all" ? where(category: category) : all
  }
end
