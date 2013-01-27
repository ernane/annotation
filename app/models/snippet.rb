class Snippet < ActiveRecord::Base
  attr_accessible :name, :code, :language_id
  belongs_to :language, counter_cache: true
  
  validates_presence_of :name, :code, :language
end
