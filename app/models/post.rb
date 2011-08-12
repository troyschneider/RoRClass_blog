class Post < ActiveRecord::Base
    #validates :body, :presence => true
    validates_presence_of :body, :title, :author
    has_many :comments
end
