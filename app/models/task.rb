class Task < ApplicationRecord
    STATUSES = ['Pending', 'Started', 'Completed'].freeze

    validates :title, :note, :deadline, presence: true
    validates :status, inclusion: {in: STATUSES}
end
