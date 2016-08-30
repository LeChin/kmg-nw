class DaySchedule < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :schedule
  belongs_to :day

end
