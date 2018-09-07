 module Spree
   module Admin
     PaymentsController.class_eval do

       private

       def load_payment
         @payment = Payment.find_by!(number: params[:id])
       end
     end
   end
 end
