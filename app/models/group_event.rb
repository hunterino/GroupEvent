class GroupEvent < ApplicationRecord
    attribute :published, :boolean, default: false
    attribute :deleted, :boolean, default: false

    def duration
        duration = (ends - starts).to_i
    end
end
