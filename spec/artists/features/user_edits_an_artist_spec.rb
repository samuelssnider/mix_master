require 'rails_helper'

RSpec.feature "User visits artist" do
  scenario "they can edit an artist" do
    artist_name       = "Bob Marley"
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
		Artist.create(name: "Santa" , image_path: "https://maps.gstatic.com/mapfiles/santatracker/v201612250404/scenes/smatch/img/portraits/santa.svg")

    visit '/artists'
    click_on 'edit'
		fill_in "Name", with: "Bob Marley"
		fill_in "Image path", with: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
		click_on 'Update Artist'
    expect(page).to have_content artist_name
    expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
  end
end
