class SiteConfigurationController < ApplicationController
  before_action :require_login, only:  [:index, :show, :create, :update]

  def index
      if SiteConfiguration.count() > 0
        @site_configuration = SiteConfiguration.first()
      else
        @site_configuration = SiteConfiguration.new
      end
  end

  def show
  end

  def aboutus
  end

  def create
    site_configuration = SiteConfiguration.new

    site_configuration.name = params[:company_name]
    site_configuration.description = params[:company_description]
    site_configuration.bio = params[:company_bio]
    site_configuration.contact_email =[:contact_email]
    site_configuration.contact_phone = [:contact_phone]

    if site_configuration.save() == false
      flash[:errors] = site_configuration.errors.full_messages
    end

    redirect_to site_configuration_index_path
  end

  def update
    site_configuration = SiteConfiguration.find(params[:id])

    site_configuration.name = params[:company_name]
    site_configuration.description = params[:company_description]
    site_configuration.bio = params[:company_bio]
    site_configuration.contact_email = params[:contact_email]
    site_configuration.contact_phone = params[:contact_phone]

    if site_configuration.save() == false
      flash[:errors] = site_configuration.errors.full_messages
    end

    redirect_to site_configuration_index_path

  end
end
