module Fae
  module NavigationConcern
    extend ActiveSupport::Concern

    # define the navigation structure in this file
    # navigation will default to the sidenav,
    # unless you set the following in the Fae initializer:
    #
    #   config.has_top_nav = true

    # example  structure with top nav:
    #
    # def structure
    #   [
    #     item('Top Nav Item 1', subitems: [
    #       item('Top Nav Dropdown Item 1', class: 'custom-class', path: some_named_route_path),
    #       item('Top Nav Dropdown Item 2', subitems: [
    #         item('Side Nav Item 1', subitems: [
    #           item('Side Nav Nested Item', path: some_named_route_path)
    #         ]),
    #         item('Side Nav Item 1', path: some_named_route_path)
    #       ]),
    #     ]),
    #     item('Pages', subitems: [
    #       item('Home', path: fae.edit_content_block_path('home')),
    #       item('About Us', path: fae.edit_content_block_path('about_us'))
    #     ])
    #   ]
    # end

    def structure
      [
        item('Classes and Instructors', subitems: [
          item('Classes', path: admin_workouts_path),
          item('Class Types', path: admin_class_types_path),
          item('Instructors', path: admin_instructors_path),
          item('Schedule', path: admin_schedules_path)
        ]),
        item('News', path: admin_news_items_path),
        item('Media', path: admin_media_path),
        item('Pages', path: fae.pages_path, subitems: [
          item('Home', path: fae.edit_content_block_path('home')),
          item('About', path: fae.edit_content_block_path('about_landing')),
          item('Class Landing', path: fae.edit_content_block_path('class_landing')),
          item('Class Schedule Landing', path: fae.edit_content_block_path('class_schedule_landing')),
          item('Instructors Landing', path: fae.edit_content_block_path('instructors_landing')),
          item('Media Landing', path: fae.edit_content_block_path('photo_landing')),
          item('Memebership Landing', path: fae.edit_content_block_path('membership_landing')),
          item('Contact Info', path: fae.edit_content_block_path('contact_info')),
        ])
      ]
    end

  end
end
