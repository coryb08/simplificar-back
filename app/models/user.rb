class User < ApplicationRecord
  has_many :templates
  validates :name, presence: true
  validates :name, uniqueness: true
end
