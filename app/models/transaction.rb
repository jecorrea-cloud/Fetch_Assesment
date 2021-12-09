class Transaction < ApplicationRecord
  belongs_to :user


  validates: :payer, :points, :datetime, presence: true
  validates: :points, numericality: {'greater_than': 0} 

  def self.current
    transactions = self.all
    current_balances = {}

    for i in 0...transactions.length
      current_balances[transactions[i].payer] ? current_balances[transactions[i].payer] += transactions[i].points : current_balances[transactions[i].payer] = transactions[i].points
    end
    
    balances
  end

end
