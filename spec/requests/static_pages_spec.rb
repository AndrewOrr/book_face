require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Book Face') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "profile page" do
    before { visit profile_path }

    it { should have_content('profile') }
    it { should have_title(full_title('profile')) }
  end

  describe "wall" do
    before { visit wall_path }

    it { should have_content('Wall') }
    it { should have_title(full_title('Wall')) }
  end
    describe "login" do
    before { visit login_path }

    it { should have_content('login') }
    it { should have_title(full_title('login')) }
  end
    describe "news_feed" do
    before { visit news_feed_path }

    it { should have_content('news_feed') }
    it { should have_title(full_title('news_feed')) }
  end
end