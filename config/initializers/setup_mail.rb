ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "kidzboutique.ie",
    :user_name            => "bosullivan.meath@gmail.com",
    :password             => "",
    :authentication       => "plain",
    :enable_starttls_auto => true
}