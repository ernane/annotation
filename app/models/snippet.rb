class Snippet < ActiveRecord::Base
  attr_accessible :language, :plain_code
  validates_presence_of :language, :plain_code
end
