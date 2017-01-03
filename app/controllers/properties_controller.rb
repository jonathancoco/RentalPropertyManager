class PropertiesController < ApplicationController
  def index
    @available_property = Property.where(available:true)
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    property = Property.new(property_params)


    if property.save()
      redirect_to edit_property_attribute_path(property)
    else
      flash[:errors] = property.errors.full_messages
      redirect_to new_property_path
    end
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    property = Property.find(params[:id])

    if property.update(property_update_params)
      redirect_to properties_maintain_path
    else
      flash[:errors] = user.errors.full_messages
      redirect_to edit_property_path
    end
  end

  def destroy
    property = Property.find(params[:id])
    property.destroy

    redirect_to properties_maintain_path
  end

  def maintain_property
    @all_property = Property.all()

  end

  private
  def property_params
    params.require(:property).permit(:location, :rent, :available, :available_date, :image)
  end

  def property_update_params
    params.require(:property).permit(:location, :rent, :available, :available_date, :image, :remove_image)
  end

end
