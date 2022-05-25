ActiveAdmin.register Product do

  permit_params :name, :sno, :price, :no_of_item


  
  show do
    attributes_table do
      
      row :name
      row :sno
      row :price
      row :no_of_item
      row :items do |object|
        object.items&.map{|i|i&.item_name}
      end
    end
    # active_admin_comments
  end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :sno, :price, :no_of_item
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :sno, :price, :no_of_item]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
