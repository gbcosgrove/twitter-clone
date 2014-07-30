require 'spec_helper'

describe "StaticPages" do

subject { page }

  describe "Home Page" do
    before { visit root_path }

    it { should have_content('Fwitter') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help Page" do

    before { visit help_path }

    it { should have_content('Help') }
    it { should_not have_title('| Help') }
  end

  describe "About Page" do
    before { visit about_path }

    it { should have_content('About Us') }
    it { should_not have_title('| About') }
  end

  describe "Contact Page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should_not have_title('| Contact') }
  end


end
