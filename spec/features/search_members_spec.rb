require 'rails_helper'

describe "Airbender API" do 

  it "searrch returns members of a nation" do
    visit "/"

    select('Fire Nation', from: :nation)
    click_on "Search For Members"

    expect(current_path).to eq('/search')

    expect(page).to have_content("Members of the Fire Nation")
    expect(page).to have_content("Count: 20")
    save_and_open_page
binding.pry
    character0 = Character.all[0]
    character1 = Character.all[1]

    within("#character-#{character0.name}")do 
      expect(page).to have_content(character_0.name)
      expect(page).to have_content(character_0.allies_list)
      expect(page).to have_content(character_0.enemies_list)
      expect(page).to have_content(character_0.affiliation_list)

    end

    
  end
  

end

# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (i.e. 20)
# And I should see a list with the detailed information for the 20 members of the Fire Nation.
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies and a list of enemies
# - Any affiliation that the member has