class Snippet < ActiveRecord::Base
  attr_accessible :name, :code, :language_id, :user
  belongs_to :language, counter_cache: true
  belongs_to :user, counter_cache: true
  
  validates_presence_of :name, :code, :language
end
