class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to pages_sample01_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end
  
  def destroy
    if @user= User.find_by(id: session[:user_id]) 
     @user.destroy
     flash[:success]
     redirect_to pages_index_path, success: '退会が完了しました'
    else
     redirect_to pages_index_path, success: "ログインして下さい"
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :nickname, :email, :password, :password_confirmation)
  end
  
end
