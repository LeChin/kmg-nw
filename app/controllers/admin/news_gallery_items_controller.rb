module Admin
  class NewsGalleryItemsController < Fae::NestedBaseController
    private

    def build_assets
      @item.build_image if @item.image.blank?
    end
  end
end
