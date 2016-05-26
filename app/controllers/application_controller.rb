class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :localized_url_for

  protected

  def localized_url_for
    proc do |locale|
      url_for(only_path: true, locale: locale.to_s)
    end
  end
end
