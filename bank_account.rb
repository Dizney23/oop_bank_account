class BankAccount

	@balance = nil

	def initialize(balance, name)
		@balance = balance
		if balance <= 200
			raise ArgumentError.new "Error:Did not meet min balance!"
		end
	end

	def balance
		@balance 
	end

	def deposit(deposit_amt)
		@balance += deposit_amt
	end

	def withdraw(withdraw_amt)
		@balance -= withdraw_amt
	end

	def transfer(transfer_amt, bank_account)
		@balance -= transfer_amt
		bank_account.deposit(transfer_amt)
	end

	def self.minimum_balance=(minimum_balance)
     @@minimum_balance = minimum_balance
   end

   def self.minimum_balance
     @@minimum_balance
   end
end
