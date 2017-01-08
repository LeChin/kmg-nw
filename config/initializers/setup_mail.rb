ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :openssl_verify_mode => 'none'
}