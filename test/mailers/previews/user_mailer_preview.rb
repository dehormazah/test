# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def welcome_email
    UserMailer.welcome_email(User.last)
  end

  def achievement_email
    UserMailer.achievement_email(User.first)
  end
end
