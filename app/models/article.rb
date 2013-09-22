class Article < ActiveRecord::Base
  validates_presence_of :title, :author, :summary, :content
end
