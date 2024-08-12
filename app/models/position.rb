class Position < ApplicationRecord
  broadcasts_refreshes

  has_many :people, dependent: :destroy
end
