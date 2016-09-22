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

  def xml_sitemap_path(path)
    # If https is turned on we may have to slide the following code into place. Request objects seem to be finicky w https.
    # protocol = Rails.env.production? ? 'https' : 'http'
    # full_url_w_protocol = "#{protocol}://" + "www." "#{request.domain}" + "#{path}"
    request.protocol + request.subdomain + '.' + request.domain + path
  end
end
