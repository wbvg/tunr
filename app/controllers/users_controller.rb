class UsersController < ApplicationController
#   def create
#   user = User.where(:name => params[:name])
#   user.authentication(params[:password])
#   session(:user_id) = user.user_id
#     end
#   end
# end

  def new
    @user = User.new
  end

  def create
      @user = User.new(params[:user])
      if @user.save
        redirect_to(root_path)
      else
        render :new
      end
  end

  def edit
      @user = @auth
      render :new
  end

  def update
      @user = @auth
      if @user.update_attributes(params[:user])
        redirect_to(root_path)
      else
        render :new
       end
   end
end