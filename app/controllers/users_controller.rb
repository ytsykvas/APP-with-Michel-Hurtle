class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) #шукаємо юзера по ІД
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # обробка успішного зберігання
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email. :password,:password_confirmation)
  end
end
