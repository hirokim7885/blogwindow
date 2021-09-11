class UserMailer < ApplicationMailer

  def welcome
    @name = params[:family_name]
    mail(to: params[:to], subject: "新規登録が完了致しました。")
  end

end
