require 'spec_helper'

describe "Static pages" do

  subject { page }

   describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "news_feed page" do

    it "should have the content 'News'" do
      visit '/static_pages/news_feed'
      expect(page).to have_content('News')
    end
  end

 describe "profile page" do

    it "should have the content 'Me'" do
      visit '/static_pages/profile'
      expect(page).to have_content('profile')
    end


  end

 describe "wall page" do

    it "should have the content 'wall'" do
      visit '/static_pages/wall'
      expect(page).to have_content('wall')
    end
  end


end