class Fund < ActiveRecord::Base
  has_many :assets
  has_and_belongs_to_many :users
  has_many :projects, -> { uniq }, through: :assets
end
