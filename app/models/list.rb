class List < ActiveRecord::Base
  has_many :tasks, :dependent => :destroy
  validates :description, :presence => true
end
