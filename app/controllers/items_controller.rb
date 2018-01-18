class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    raise params.inspect
    @item = Item.new
    # if @item.save(item_params)
    #   # if
    #   # Category....
    #   # redirect_to ...
    # else
    #   render :new
    # end

  end



  private
  def item_params
    params.require(:item).permit(:name, :inventory, :size, :category_id => [], :category_attributes => [:name])
  end
end



# "utf8"=>"✓",
# "authenticity_token"=>"1KCxbYEqHKaU6dPMy7t96olsBwe0uQsvT5cZp4FPm7LG9CIokqx/eUS0M42iPZMiBGQj269TCUlS5n1z+mYYIA==",
# "item"=>{
#   "name"=>"Fettucini",
#   "inventory"=>"1",
#   "size"=>"1 lb",
#   "category_id"=>["", "3"],
#   "category"=>{"name"=>""}
#   },
# "commit"=>"Create Item",
# "controller"=>"items",
# "action"=>"create",
# "pantry_id"=>"1"
# }
