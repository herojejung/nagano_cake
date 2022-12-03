class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @book.save
    redirect_to admin_item_path(@item.id)
    end
  end

  def index
    @items = Item.all
    @item.new
  end


  def index
  end

  def show
  end

  def edit
  end

  def new
  end
end
