class Post < ActiveRecord::Base
    #validates :body, :presence => true
    validates_presence_of :body, :title, :author
    validates_uniqueness_of :title
    has_many :comments
    #FIXME something needs to be fixed ("rake notes" to view)
end
