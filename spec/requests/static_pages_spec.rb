require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_content('home')
    end
end
=begin

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
=end

end