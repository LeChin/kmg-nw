class ClassTypeWorkout < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :class_type
  belongs_to :workout

end
