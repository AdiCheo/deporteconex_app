require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Deporte Conex'" do
      visit '/static_pages/home'
      expect(page).to have_content('Deporte Conex')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Deporte Conex | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Deporte Conex | Help")
    end
  end

end

# require 'spec_helper'

# describe "StaticPages" do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get static_pages_index_path
#       response.status.should be(200)
#     end
#   end
# end
