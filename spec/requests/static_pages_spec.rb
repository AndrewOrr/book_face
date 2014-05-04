require 'spec_helper'

#Very basic tests to describe very basic functionality

describe "Static pages" do 

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
    it { should have_content('BookFace') }
    it { should have_link('Sign up!', href: signup_path) }
    it { should have_link('Sign In', href: signin_path) }

	describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          expect(page).to have_selector("li##{item.id}", text: item.content)
        end
      end
    end
  end

end