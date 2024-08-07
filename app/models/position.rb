class Position < ApplicationRecord
  has_many :people, dependent: :destroy
end
