module ApplicationHelper

  def markdown(string, options={})
    optional_class = options[:class] ? options[:class] : ''
    if string.present? && @markdown.present?
      content_tag :div, raw(@markdown.render(string)), class: "markdown-content #{optional_class}"
    end
  end

  def asset_present?(asset_object)
    asset_object.present? && asset_object.asset.present?
  end
end
