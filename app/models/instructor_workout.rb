class InstructorWorkout < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :workout
  belongs_to :instructor

end
