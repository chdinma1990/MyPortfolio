Rails.configuration.stripe ={
	#Stripe.api_key = ENV["stripe_api_key"],
:publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}


Stripe.api_key = Rails.configuration.stripe[:secret_key]
