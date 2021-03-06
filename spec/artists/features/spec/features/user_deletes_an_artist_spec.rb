require 'rails_helper'

RSpec.feature "User visits artist" do
  scenario "they can delete an artist" do
    artist_name       = "Bob Marley"
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
		Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit '/artists'
		click_on('Delete')
    expect(page).not_to have_content artist_name
    expect(page).not_to have_css("img[src=\"#{artist_image_path}\"]")
  end
end
