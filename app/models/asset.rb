class Asset < ActiveRecord::Base
  belongs_to :fund
  belongs_to :project
end
