class ReportMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.send_report.subject
  #
  def send_report(name, email)
    @assembly = Assembly.find_by_name(name)
    @hits = @assembly.hits
    mail to: "#{email}"
  end
end
