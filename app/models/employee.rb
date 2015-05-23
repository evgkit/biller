class Employee < Account
  has_many :time_entries
  has_and_belongs_to_many :projects, :join_table => "employees_projects"

  def total_hours
    time_entries.sum(:time)
  end

  def log_time(account, customer)
    TimeEntry.create(time: account,
                     employee: self,
                     account: customer)
  end
end
