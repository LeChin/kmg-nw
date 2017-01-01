class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'application'
  before_filter :init_contact_page, :init_markdown, :init_trial

  private

  def show_404
    render template: 'pages/error404.html.slim', status: :not_found
  end

  def init_contact_page
    @contact_page = ContactInfoPage.instance
  end

  def init_markdown
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true)
  end

  def init_trial
    @free_trial_request = FreeTrialRequest.new
  end

end
