require 'spec_helper'

describe Message do
  let(:user1) { FactoryGirl.create(:user)}
  let(:user2) { FactoryGirl.create(:user) }
  before(:each) do
      sign_in user
      visit user_path(user)
    end
end
