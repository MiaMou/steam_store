class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :steam
  after_create :set_status

  def set_status
    self.update(status: "completed")
  end
end
