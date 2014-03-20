require 'spec_helper'


describe "Static pages" do

  let(:base_title) { "RoR Sample_App" }
  
  describe "home page" do
    
    it "should have the Title Page" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} |Home|")
    end
    
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App') 
    end
  end # -> "home page"

  describe "help page" do

    it "should have the Title Page" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} |Help|")
    end

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help') 
    end
  end # -> "help page"
  
  describe "about page" do

    it "should have the Title Page" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} |About|")
    end

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end # -> "about page"

  describe "contact page" do

    it "should have the Title Page" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} |Contact|")
    end

    it "should have the content 'contact page'" do
      visit '/static_pages/contact'
      expect(page).to have_content('contact page')
    end
  end # -> "contact page"
end # "Static pages"
