class Employee < Account
  has_many :time_entries

  def total_hours
    time_entries.sum(:time)
  end

  def log_time(account, customer)
    TimeEntry.create(time: account,
                     employee: self,
                     account: customer)
  end
end
