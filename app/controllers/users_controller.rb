class UsersController < ApplicationController
  def show
    @prototypes = Prototype.all 
    @user = User.find(params[:id])
  end
end
