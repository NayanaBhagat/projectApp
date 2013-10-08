class Project < ActiveRecord::Base
		has_and_belongs_to_many :users
  attr_accessible :end_date, :name, :start_date, :user_id, :user_name
end
