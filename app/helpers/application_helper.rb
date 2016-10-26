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

  def workout_class(workout)
    if workout.class_types_list.include? 'Teen'
      'teen'
    elsif workout.class_types_list.include? 'Krav'
      'krav'
    elsif workout.class_types_list.include? 'Strike'
      'strike'
    elsif workout.class_types_list.include? 'Combat'
      'combat'
    elsif workout.class_types_list.include? 'Coach'
      'coach'
    end
  end

  def body_class
    @body_class.present? ? @body_class : "#{controller_name} #{action_name}"
  end

  def nav_active(controller)
    active_class = 'current'
    if controller == 'pages'
      return unless action_name == 'contact'
    else
      return if controller != controller_name
    end
    active_class
  end
end
