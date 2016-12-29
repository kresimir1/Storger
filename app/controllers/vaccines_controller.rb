class VaccinesController < ApplicationController

  def index
    @vaccines = Vaccine.all
    @user = User.find(current_user.id)
    @children = @user.children
  end

  def show
    @vaccine = Vaccine.find(params[:id])
  end
end
