module ApplicationHelper

  def markdown(string, options={})
    optional_class = options[:class] ? options[:class] : ''
    if string.present? && @markdown.present?
      content_tag :div, raw(@markdown.render(string)), class: "markdown-content #{optional_class}"
    end
  end

  def meta_description
    "'So one may walk in peace.' Imi Lichtenfeld. Invictus Defense Academy"
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

  def has_workout_image?(workout)
    if
      (workout.class_types_list.include? 'Teen') ||
      (workout.class_types_list.include? 'Krav') ||
      (workout.class_types_list.include? 'Strike') ||
      (workout.class_types_list.include? 'Combat') ||
      (workout.class_types_list.include? 'Coach')
      true
    else
      false
    end
  end

  def workout_image(workout)
    if workout.class_types_list.include? 'Teen'
      'icons/Teen.svg'
    elsif workout.class_types_list.include? 'Krav'
      'icons/Krav_Maga.svg'
    elsif workout.class_types_list.include? 'Strike'
      'icons/Strike_Lab.svg'
    elsif workout.class_types_list.include? 'Combat'
      'icons/Combat_Conditioning.svg'
    elsif workout.class_types_list.include? 'Coach'
      'icons/Coach.svg'
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
