class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def send_simple_message
	RestClient.post "https://api:917489061037024067b9b54b51538ffc-9949a98f-e407f835"\
		"@api.mailgun.net/v3/sandbox6d0d4bb812c94945a5723172db48ad35.mailgun.org/messages",
		:from => "Mailgun Sandbox <postmaster@sandbox6d0d4bb812c94945a5723172db48ad35.mailgun.org>",
		:to => "Kira Helm <soulclimberchick@gmail.com>",
		:subject => "Hello Kira Helm",
		:text => "Congratulations Kira Helm, you just sent an email with Mailgun!  You are truly awesome!"

# You can see a record of this email in your logs: https://app.mailgun.com/app/logs.

# You can send up to 300 emails/day from this sandbox server.
# Next, you should add your own domain so you can send 10000 emails/month for free.
end
