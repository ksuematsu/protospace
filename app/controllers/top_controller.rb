class TopController < ApplicationController
  def index
    @prototypes = Prototype.order("created_at DESC").page(params[:page]).per(4)
    @four_hot_prototypes = Prototype.order("created_at ASC").page(params[:page]).per(4)
  end
end
