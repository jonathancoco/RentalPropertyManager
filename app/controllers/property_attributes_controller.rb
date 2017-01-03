class PropertyAttributesController < ApplicationController
  def create
    attribute = PropertyAttribute.new(attribute_params)


    if attribute.save()
      redirect_to edit_property_attribute_path(attribute.property_id)
    else
      flash[:errors] = attribute.errors.full_messages
      redirect_to edit_property_attribute_path(attribute.property_id)

      puts "we got errors"
    end
  end

  def edit
    @property = Property.find(params[:id])
    @attribute = PropertyAttribute.new
    @all_property_attributes = PropertyAttribute.where(property_id:@property)

  end

  def destroy
    attribute = PropertyAttribute.find(params[:id])
    prop_id = attribute.property_id

    attribute.destroy

    redirect_to edit_property_attribute_path(prop_id)
  end

end

private
def attribute_params
  params.require(:property_attribute).permit(:property_id, :key, :value)
end
