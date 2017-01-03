class ServicesController < ApplicationController
  def index
    @all_services = Service.all()
  end

  def show
  end

  def show_all
  end

  def update

    service = Service.find(params[:id])

    service.title = params[:title]
    service.description = params[:description]

    if service.save() == false
      flash[:errors] = service.errors.full_messages
    end

    redirect_to services_path

  end

  def create
    service = Service.new

    service.title = params[:title]
    service.description = params[:description]

    if service.save() == false
      flash[:errors] = service.errors.full_messages
    end

    redirect_to services_path
  end

  def edit
    @service = Service.find(params[:id])
  end

  def destroy
    service = Service.find(params[:id])
    service.destroy

    redirect_to services_path
  end
end
