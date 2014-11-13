require 'spec_helper'

describe Relationship do
  before(:each) { @relationship = Relationship.new(follower_id: 1, followed_id: 2) }

  it "should be valid" do
    @relationship.should be_valid
  end

  it "should require a follower id" do
    @relationship.follower_id = nil
    @relationship.should_not be_valid
  end

  it "should require a followed_id" do
    @relationship.followed_id = nil
    @relationship.should_not be_valid
  end

end
