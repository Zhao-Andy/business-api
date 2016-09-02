class Company < ActiveRecord::Base
  validates :name, :buzzword, :slogan, :department, presence: true
end
