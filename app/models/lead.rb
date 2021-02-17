class Lead < ApplicationRecord
  # before_create :parse_phone
  
  validates :first_name, :last_name, :phone_number, :message, presence: true
  # validates :phone_number, phone: true

  def full_name
    self.first_name + ' ' + self.last_name
  end

  def parse_phone
    self.phone_number = Phonelib.parse(phone_number).full_e164.presence
  end

end
