require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "body is required" do
    post = Post.new :title => "whatever", :author => "me"
    assert !post.valid?
  end
  
  test "title is required" do
    post = Post.new :body => "whatever", :author => "me"
    assert !post.valid?
  end
  
  test "author is required" do
    post = Post.new :body => "whatever", :title => "title"
    assert !post.valid?
  end
  
  test "title is unique" do
    post = Post.new :title => "First Post",
      :body => "whatever",
      :author => "me"
    assert !post.save
  end
  
end
