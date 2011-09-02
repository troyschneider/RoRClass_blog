require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "author is required" do
    comment = Comment.new :body => "hi"
    assert !comment.valid?
  end
  
  test "body is required" do
    comment = Comment.new :author => "me"
    assert !comment.valid?
  end
  
end
