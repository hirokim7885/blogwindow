class PasswordResetMailer < ApplicationMailer

  def reset_password_instructions
    @name = params[:family_name]
    mail(to: params[:to], subject: "パスワード再設定のためのURLをお送り致します。")
  end

end
