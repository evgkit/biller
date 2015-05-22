class Customer < Account
  has_many :time_entries
end

#@customer.time_entries #only TimeEntries
#@customer.account_entries #a mix of TimeEntries and AccountEntries
