require_relative './lib/bank_account'
require_relative './lib/transfer'

require 'pry'


leigh = BankAccount.new("leigh")
emily_co = BankAccount.new("Emily Co")
my_t = Transfer.new(leigh, emily_co, 100)

binding.pry
