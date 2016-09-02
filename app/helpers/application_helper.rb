module ApplicationHelper

  def markdown(string, klass = '')
    if string.present? && @markdown.present?
      content_tag :div, @markdown.render(string).html_safe, class: "markdown #{klass}"
    end
  end

  def asset_present?(asset_object)
    asset_object.present? && asset_object.asset.present?
  end
end
