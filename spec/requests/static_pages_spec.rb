require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Fwitter" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Fwitter')
    end
  end
end
