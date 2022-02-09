require 'rails_helper'

# User Story 1, Chef Index (x2)
#
# For each chef table
# As a visitor
# When I visit '/chefs'
# Then I see the name of each chef record in the system

RSpec.describe 'chef index' do
  it 'it displays name of chefs' do
    chef_1 = Chef.create!(name: 'Gaston acurio', age: 39, is_male: true, years_employed: 11)
    chef_2 = Chef.create!(name: 'Sole jimenez', age: 44, is_male: false, years_employed: 22)
    chef_3 = Chef.create!(name: 'Alec sintek', age: 32, is_male: true, years_employed: 9)

    visit '/chefs'
    save_and_open_page
    expect(page).to have_content(chef_1.name)
    expect(page).to have_content(chef_2.name)
    expect(page).to have_content(chef_3.name)
  end
end
