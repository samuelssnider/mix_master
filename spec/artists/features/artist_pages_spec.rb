require 'rails_helper'

RSpec.describe "As a user" do
	it "When I visit the artists and try to create a new artist" do
		visit '/artists'

		artist_name       = "Bob Marley"
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"


		click on "New Artist"
		fill_in "artist_name", with: artist_name
		fill_in "artist_image_path", with: artist_image_path
		click on "Create Artist"

		expect(page).to have_content artist_name
		expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
	end

end
