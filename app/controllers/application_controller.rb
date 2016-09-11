class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'application'
  before_filter :init_contact_page

  private

  def init_contact_page
    @contact_page = ContactInfoPage.instance
  end

end
