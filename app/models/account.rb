# -*- coding: utf-8 -*-
class Account
  extend Forwardable

  def_delegator :@account_type, :interest_rate

  def initialize(account_type, days_overdrawn)
    @account_type = account_type
    @days_overdrawn = days_overdrawn
  end

  def interest_for_amount_days(amount, days)
    interest_rate * amount * days / 365
  end

  def bank_charge
    result = 4.5
    result += @account_type.overdraft_charge(@days_overdrawn) if @days_overdrawn > 0
    result
  end
end
