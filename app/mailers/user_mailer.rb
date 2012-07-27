#
#   user_mailer.rb
#
#   Version 1
#
#   Date: 26/07/2012
#
#   @author Brian O'Sullivan 11114835
#   @reference http://railscasts.com/episodes/206-action-mailer-in-rails-3
#

class UserMailer < ActionMailer::Base
  default :from => "no-reply@kidzboutique.ie"


  # @reference http://railscasts.com/episodes/206-action-mailer-in-rails-3
  def registration_confirmation(user)
    @user = user
    mail(:to => user.email,
         :subject => "Thank you for registering"
    )
  end

  # @author Brian O'Sullivan 11114835
  def order_confirmation(user, order)
    @user = user
    @order = order
    @line_items = @order.line_items
    mail(:to => user.email,
         :subject => "Thank you for your order"
    )
  end
end
