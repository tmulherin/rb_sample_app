require 'spec_helper'

describe "Static pages" do
  subject { page }
#  let(:base_title) { "RoR Sample App" }
  
# ------- Home -----------------------------------------------------
  describe "home page" do
    before { visit root_path }
    
    it { should have_content   'Sample App' }
    it { should have_title     full_title('') }
    it { should_not have_title ' | Home|' }
  end 
  
# ------- Help ------------------------------------------------------
  describe "help page" do
    before { visit help_path }

    it { should have_title full_title('Help') }
    it { should have_content 'Help' }
  end

# ------- About -----------------------------------------------------  
  describe "about page" do
    before { visit about_path }

    it {should have_title full_title('About') }
    it {should have_content 'About Us' }
  end

# ------- Contact ---------------------------------------------------
  describe "contact page" do
    before { visit contact_path }

    it {should have_title full_title('Contact') }
    it {should have_content 'Contact Page' }
  end
end # describe "Static pages"
