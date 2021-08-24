# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  
  def new
    @user = User.new
  end

  def create
    if @user = current_user
      redirect_to root_path, notice: "ログインしました。"
    else
      render :new, status: :unprocessable_entity
    end
  end

end
