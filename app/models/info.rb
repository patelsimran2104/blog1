class Info < ApplicationRecord
  validates :fullname, presence: true
  validates_each :fullname do |record, attr, value|
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
  end
  validates :personalemail, presence: true,
                            format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/, message: "Email invalid"  },
                            length: { minimum: 4, maximum: 254 }
  validates :address, :worklocation, presence: true
  validates :personalphoneNo, :professionalphoneNo, presence: true, numericality: true, length: { minimum: 10, maximum: 10 }
  validates :gender, presence: true
  validates :professionalemail, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/, message: "Email invalid"},
                                length: { minimum: 4, maximum: 254 }
  validates :dob, presence: true
  

  # def dob_date_cannot_be_this
  #   if dob > Date.today
  #     errors.add(:dob, "can't be in the future")
  #   end
  # end
end