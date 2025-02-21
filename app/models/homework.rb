class Homework < ApplicationRecord

  class Homework < ApplicationRecord
    validates :title, presence: true
    validates :subject, presence: true
    validates :due_date, presence: true
    validates :priority, inclusion: { in: [0, 1, 2] }
    validates :status, inclusion: { in: [0, 1, 2] }
  end
end
