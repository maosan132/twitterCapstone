class Taste < ApplicationRecord
  belongs_to :user, optional: true

  validates :text, presence: true, length: { maximum: 240 }
end
