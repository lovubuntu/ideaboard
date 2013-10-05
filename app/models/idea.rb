class Idea < ActiveRecord::Base
  attr_accessible :description, :name, :url, :votes
  validates :name, presence:true, length: {minimum:4} format: /^((?i)idea)[A-Z]/
end
