class Todo < ApplicationRecord
  validates :title, presence: true
  validates :is_done, inclusion: [true, false]
end
