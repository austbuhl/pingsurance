class Lead < ApplicationRecord
  validates :first_name, :last_name, :phone_number, :message, presence: true
  validates :phone_number, phone: true

  def full_name
    self.first_name + ' ' + self.last_name
  end

end
