require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    # it { should have_title(full_title('')) }
    it { should have_title('BookFace') }
    it { should_not have_title('| Home') }
    it { should have_content('BookFace') }
    it { should have_link('Sign Up Now!', href: signup_path) }
    it { should have_link('Log In', href: login_path)}
  end

=begin
  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    # it { should have_title(full_title('Help')) }
    it { should have_title('Help') }
  end

  describe "profile page" do
    before { visit profile_path }

    it { should have_content('Profile') }
    # it { should have_title(full_title('profile')) }
    it { should have_title('Profile') }
  end
    describe "login" do
    before { visit login_path }

    it { should have_content('Log In') }
    # it { should have_title(full_title('login')) }
    it { should have_title('Log In') }
  end
    describe "news_feed" do
    before { visit news_feed_path }

    it { should have_content('News Feed') }
    # it { should have_title(full_title('News Feed')) }
    it { should have_title('News Feed') }

  end
=end

end