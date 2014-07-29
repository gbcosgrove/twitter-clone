require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Fwitter" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Fwitter')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Fwitter - The Fake Twitter | Home")
    end
  end

  describe "Help Page" do

    it "Should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
      expect(page).to have_content('Fake Twitter')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Fwitter - The Fake Twitter | Help")
    end
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Fwitter - The Fake Twitter | About")
    end
  end


end
