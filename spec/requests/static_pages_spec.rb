require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Fwitter - The Fake Twitter" }

  describe "Home Page" do
    it "should have the content 'Fwitter" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Fwitter')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Fwitter - The Fake Twitter")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help Page" do

    it "Should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
      expect(page).to have_content('Fake Twitter')
    end

     it "should have the base title" do
      visit '/static_pages/help'
      expect(page).to have_title("Fwitter - The Fake Twitter")
    end

    it "should not have a custom page title" do
      visit '/static_pages/help'
      expect(page).not_to have_title('| Help')
    end
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

     it "should have the base title" do
      visit '/static_pages/about'
      expect(page).to have_title("Fwitter - The Fake Twitter")
    end

    it "should not have a custom page title" do
      visit '/static_pages/about'
      expect(page).not_to have_title('| About')
    end
  end

  describe "Contact Page" do
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end

      it "should have the base title" do
      visit '/static_pages/contact'
      expect(page).to have_title("Fwitter - The Fake Twitter")
    end

    it "should not have a custom page title" do
      visit '/static_pages/contact'
      expect(page).not_to have_title('| Contact')
    end
  end


end
