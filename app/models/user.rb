class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   belongs_to :plan
   attr_accessor :stripe_card_token


      def save_with_payment
  	    if valid?
  	      customer = Stripe::Customer.create(description: email, plan: plan_id, card: stripe_card_token) #Using stripe gem to send out information to stripe server. when stripe receives the infomation we sent to it, it would charge the customer and it would return an id when it's done running.#
  	      self.stripe_customer_token = customer.id 
  	     save!
  	   end
	  end

end
