class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
  redirect_to new_session_path if session[:user_id] == nil
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def site_configuration

    @site_configuration = SiteConfiguration.new
    if SiteConfiguration.count() > 0
      @site_configuration = SiteConfiguration.first
    end
  end

  def google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17"
  end

  def services

    @services = Service.new
    if Service.count() > 0
      @services = Service.all
    end
  end

  helper_method :current_user, :site_configuration, :services, :google_map
end
