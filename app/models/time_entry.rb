class TimeEntry < AccountEntry
  belongs_to :employee

  validates :time, numericality: {greater_than: 0, less_than: 100}

  def cost
    time * 34
  end
end
