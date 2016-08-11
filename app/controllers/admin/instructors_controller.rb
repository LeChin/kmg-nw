module Admin
  class InstructorsController < Fae::BaseController

    private

    def build_assets
      @item.build_hero_image if @item.hero_image.blank?
      @item.build_bio_image if @item.bio_image.blank?
    end

  end
end
