class UserMailer < ApplicationMailer

  default from: 'ubung@hotmail.com'

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    file = File.join(Rails.root, 'app', 'mailers', 'body.txt')

    mail(to: @user.email,
         body: File.read(file),
         subject: "Bienvenido a Ubung! La aplicación que te ayuda a tener una vida mucho más saludable y feliz.")do |format|
      format.text{render plain: 'Render text'}
    end
  end

  def achievement_email(user)
    @user = user
    @url = 'http://example.com/loginSS'

    mail(to: @user.email,
        subject: "Felicidades, has alcanzado otro logro en Ubung!")do |format|
      format.text{render plain: 'Render text'}
    end
  end


end
