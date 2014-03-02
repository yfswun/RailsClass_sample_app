require 'spec_helper'

describe "Static pages" do

  let(:appName) {'CS 232 Rails Development'}
  
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{appName} | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{appName} | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{appName} | About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('CS 232 Contact')
    end
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{appName} | Contact")
    end
    it "should have h1 tag with page-title class" do
      visit '/static_pages/contact'
      expect(page).to have_css("h1.page-title")
    end
    it "should have section tag with main class" do
      visit '/static_pages/contact'
      expect(page).to have_css("section.main")
    end
    it "should have dl tag" do
      visit '/static_pages/contact'
      expect(page).to have_css("dl")
    end
    it "should have dt tag" do
      visit '/static_pages/contact'
      expect(page).to have_css("dt")
    end
    it "should have dd tag" do
      visit '/static_pages/contact'
      expect(page).to have_css("dd")
    end
    it "should have dt tag in dl tag" do
      visit '/static_pages/contact'
      expect(page).to have_css("dl dt")
    end
    it "should have dd tag in dl tag" do
      visit '/static_pages/contact'
      expect(page).to have_css("dl dd")
    end
  end

end
