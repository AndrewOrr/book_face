require 'spec_helper'

#Very basic tests to describe very basic functionality

describe "Static pages" do 

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
    it { should have_content('BookFace') }
    it { should have_link('Sign up now!', href: signup_path) }
    it { should have_link('Sign In', href: login_path) }
  end

end