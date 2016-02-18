class Fund < ActiveRecord::Base
  has_many :assets
  has_and_belongs_to_many :users
end
