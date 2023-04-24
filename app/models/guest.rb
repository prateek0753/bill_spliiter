class Guest < ActiveRecord::Base
  attr_accessible :amount_paid, :amount_should_have_paid, :bill_id, :name, :user_id

  belongs_to :bill
end
