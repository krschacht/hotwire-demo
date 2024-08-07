class Person < ApplicationRecord
  belongs_to :position

  enum :stage, %w[ applied interviewed declined hired ].index_by(&:to_sym)
end
