# # Preview all emails at http://localhost:3000/rails/mailers/user_mailer
# class UserMailerPreview < ActionMailer::Preview

#   # Preview this email at http://localhost:3000/rails/mailers/user_mailer/account_activation
#   def account_activation
#     UserMailer.account_activation
#   end

#   # Preview this email at http://localhost:3000/rails/mailers/user_mailer/password_reset
#   def password_reset
#     UserMailer.password_reset
#   end

# end
# Предпросмотр всех писем по адресу http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Предпросмотр этого письма на
  # http://localhost:3000/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Предпросмотр этого письма на
  # http://localhost:3000/rails/mailers/user_mailer/password_reset
  def password_reset
    UserMailer.password_reset
  end

end