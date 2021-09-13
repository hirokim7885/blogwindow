# Preview all emails at http://localhost:3000/rails/mailers/password_reset_mailer
class PasswordResetMailerPreview < ActionMailer::Preview

  def reset_password_instructions
    PasswordResetMailer.with(to: "hirokim7885@gmail.com", family_name: "天海").reset_password_instructions
  end

end
