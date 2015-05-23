class Customer < Account
  has_many :time_entries

  scope :premier, -> { where("employees > ?", 55) }
  scope :newest, -> { order("created_at DESC") }
  scope :start_with, -> (letter) { where("name LIKE ?", letter + "%") }
end

