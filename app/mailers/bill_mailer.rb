class BillMailer < ActionMailer::Base
  default from: "bill.confirmation@gmail.com"

  def bill_confirmation(email, bill)
    @bill = bill
    @guests = @bill.guests
    @debts = @bill.debts
    mail(:to => email, :subject => "Bill #{bill.id} Details from IOU")
  end
end
