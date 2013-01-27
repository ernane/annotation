class Language < ActiveRecord::Base
  attr_accessible :name, :title
  
  has_many :snippets, dependent: :destroy
end
