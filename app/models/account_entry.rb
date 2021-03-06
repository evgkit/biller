class AccountEntry < ActiveRecord::Base
  has_paper_trail

  belongs_to :account

  validates :account_id, presence: true

  validates_associated :account

  after_save :update_account_balance!

  def update_account_balance!
    account.update_balance!
  end
end