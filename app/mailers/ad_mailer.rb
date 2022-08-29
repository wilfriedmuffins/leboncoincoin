class AdMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ad_mailer.sold.subject
  #
  def sold(email)
    @greeting = "Hi, You have just made a sale"

    mail to: email

  end
end
