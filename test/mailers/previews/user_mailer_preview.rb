# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def welcome
    UserMailer.with(to: "hirokim7885@gmail.com", family_name: "村田").welcome
  end

  def reset_password_instructions
    UsersMailer.with(to: "hirokim7885@gmail.com", family_name: "天海").reset_password_instructions
  end

end
