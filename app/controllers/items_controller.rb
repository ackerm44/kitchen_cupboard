class ItemsController < ApplicationController

  def index
    @items = Item.all_available.sort_by {|i| i.name}
    @item = Item.new
    @item.build_category
    @item.pantry = current_user.pantry
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
    @item.build_category
    @item.pantry = current_user.pantry
  end

  def create
    raise params.inspect
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else
      render :new
    end

  end

  private
  def item_params
    params.require(:item).permit(:pantry_id, :name, :inventory, :size, :category_attributes => [:name, :description])
  end
end


# <ActionController::Parameters {
#   "utf8"=>"✓",
#   "authenticity_token"=>"RtN3zDlnkjXhLIRiZG/34nWXFcs1coGlyWQJi+nNJ7lUh+SJKuHx6jFxZCMN6Rkq+J8xFy6Yg8PUFW1fkuSkKw==",
#   "item"=>{
#     "name"=>"Bowtie",
#     "inventory"=>"1",
#     "size"=>"1 lb",
#     "category_id"=>"3",
#     "category_attributes"=>{
#       "name"=>"",
#       "description"=>""
#       },
#     "pantry_id"=>"1"
#     },
#   "commit"=>"Create Item",
#   "controller"=>"items",
#   "action"=>"create"
#   } permitted: false>
