class UserMailer < ApplicationMailer

  def welcome
    @name = params[:family_name]
    mail(to: params[:to], subject: "新規登録が完了致しました。")
  end

  def reset_password_instructions
    @name = params[:family_name]
    mail(to: params[:to], subject: "パスワード再設定のためのURLをお送り致します。")
  end


end
