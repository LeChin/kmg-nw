module Admin
  class WorkoutsController < Fae::BaseController

  	before_action do
      set_class_variables 'Classes'
    end
  end
end
