module Admin
  class NewsItemsController < Fae::BaseController

    private

    def build_assets
      @item.build_image_1 if @item.image_1.blank?
      @item.build_image_2 if @item.image_2.blank?
      @item.build_image_3 if @item.image_3.blank?
    end
  end
end
