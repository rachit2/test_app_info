ActiveAdmin.register Item do

  permit_params :product_id, :price, :item_name


  controller do 
    def create
      super do |_format|
        unless resource.valid?
          flash[:error] = resource.errors.full_messages.to_sentence
          # flash[:notice] = t('messages.success.created', resource: 'Brand')
          # redirect_to(admin_brands_url) and return
        end
      end
    end

    def update
      super do |_format|
        unless resource.valid?
          flash[:error] = resource.errors.full_messages.to_sentence
          # flash[:notice] = t('messages.success.created', resource: 'Brand')
          # redirect_to(admin_brands_url) and return
        end
      end
    end

    
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :product_id, :price, :item_name
  #
  # or
  #
  # permit_params do
  #   permitted = [:product_id, :price, :item_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
