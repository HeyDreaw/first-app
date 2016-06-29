if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_enOSYA0cvB8Day86kHLfjJz1',
    :secret_key => 'sk_test_PImHCRJYZM7QEto9V90IoH2r'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]