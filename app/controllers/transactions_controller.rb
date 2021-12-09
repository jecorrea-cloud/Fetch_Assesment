class TransactionsController < ApplicationController

    def index 
        render json: Transaction.current
    end
end
