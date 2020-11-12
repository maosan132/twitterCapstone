class Taste < ApplicationRecord
  belongs_to :user, optional: true
end
