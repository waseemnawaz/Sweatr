if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_KuPaPAVDIBGW5K3M59I4OhXU',
    :secret_key => 'sk_test_202pEJHR6cjZnb1kqY4Dt4cO'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]