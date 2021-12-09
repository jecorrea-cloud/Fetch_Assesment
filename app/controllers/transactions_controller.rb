class TransactionsController < ApplicationController

    def index 
        render json: Transaction.current
    end


    def create
        new_transaction = Transaction.create(transaction_params)
        
        if new_transaction.valid?
            render json: new_transaction, status: 201
        else
            render json: {"errors": new_transaction.errors.full_messages}, status: 422
        end
    end

    def spend
        
    end




    private

    def transaction_params
        params.permit(:payer, :points, :datetime)
    end

end
