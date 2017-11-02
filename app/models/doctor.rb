class Doctor < ApplicationRecord
  validates :username, :address, presence: true, uniqueness: {case_sensitive: false}
  validates :gender, presence: true
  scope :list_male, lambda {where(:gender => 'male')}
  scope :list_female, lambda {where(:gender => 'female')}

  def to_param
    username
  end
end
