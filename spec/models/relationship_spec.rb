require 'spec_helper'

describe Relationship do

  let(:friend) { FactoryGirl.create(:user) }
  let(:relationship) { friend.relationships.build(friend_id: friend.id) }

  subject { relationship }

  it { should be_valid }

   describe "friend methods" do
    it { should respond_to(:friend) }
    its(:friend) { should eq friend }
  end
  describe "when friend id is not present" do
    before { relationship.friend_id = nil }
    it { should_not be_valid }
  end
end