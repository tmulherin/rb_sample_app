require 'spec_helper'

describe "Static pages" do

  describe "home page" do
    
    it "should have the Title Page" do
      visit '/static_pages/home'
      expect(page).to have_title('RoR Sample_App |Home|')
    end
    
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App') 
    end
  end # -> "home page"

  describe "help page" do

    it "should have the Title Page" do
      visit '/static_pages/help'
      expect(page).to have_title('RoR Sample_App |Help|')
    end

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help') 
    end
  end # -> "help page"
  
  describe "about page" do

    it "should have the Title Page" do
      visit '/static_pages/about'
      expect(page).to have_title('RoR Sample_App |About|')
    end

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end # -> "about page"

end # "Static pages"
