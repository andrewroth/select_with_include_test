gem 'factory_girl', '2.0.1'
require 'factory_girl'
require File.expand_path(File.dirname(__FILE__) + "/../../spec/factories/posts")
require File.expand_path(File.dirname(__FILE__) + "/../../spec/factories/musicians.rb")
require File.expand_path(File.dirname(__FILE__) + "/../../config/environment")

describe "select_with_include" do
  it "should select only the columns specified" do
    post = FactoryGirl.build(:post)
    post.comments << FactoryGirl.build(:comment)
    post.comments << FactoryGirl.build(:comment)
    post.comments << FactoryGirl.build(:comment)
    post.comments << FactoryGirl.build(:comment)
    post.comments << FactoryGirl.build(:comment)
    post.save!

    ps = Post.find(:all, :include => [ :comments ], :select => "posts.title, comments.id")
    ps.first.comments.respond_to?(:title).should be_false
    ps.first.comments.respond_to?(:id).should be_true
  end

  it "should work with rails 2.3" do
    musicians = FactoryGirl.build_list(:musician, 3, :first_name=>["Johannes", "Gina", "Klemens"])
  end
    
end
