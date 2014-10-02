require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  # Rspec test for the home page
  describe "Home page" do
    
    # Check the content
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    
    #Check the title
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end
  
  # Rspec test for the help page
  describe "Help page" do
    
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    #Check the title
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end
  
  # Rspec test for the about page
  describe "About page" do
    
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    
    #Check the title
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end
  
  #Rspec test for the contact us page
  describe "Contact page" do
    
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
    
    # Check the title
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
  
end