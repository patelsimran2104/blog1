class Info < ApplicationRecord

  after_initialize do |info|
    puts "You have initialized an object!"
  end

  after_find do |info|
    puts "You have found an object!"
  end

  after_touch do |info|
    puts "You have touched an object"
  end

  after_destroy do |info|
    puts "Article destroyed"
  end

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
  validate :validate_dob

  def validate_dob
    if dob.present? && dob > DateTime.now
        errors.add(:dob, 'dob cant be in future')
    end
  end

end