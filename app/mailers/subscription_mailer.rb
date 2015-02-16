class SubscriptionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscriptions.confirmation.subject
  #
  def confirmation
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
