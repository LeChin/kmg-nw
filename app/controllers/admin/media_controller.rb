module Admin
  class MediaController < Fae::BaseController

  	before_action do
      set_class_variables 'Media'
    end

    private

    def build_assets
      @item.build_image if @item.image.blank?
    end
  end
end
