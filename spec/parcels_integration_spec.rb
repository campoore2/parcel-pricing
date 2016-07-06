require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcels path', {:type => :feature}) do
  it('returns the cost of a parcel based on volume, weight and distance to be shipped') do
    visit('/')
    fill_in('length', :with => 12)
    fill_in('width', :with => 7)
    fill_in('height', :with => 2)
    fill_in('weight', :with => 4)
    fill_in('distance', :with => 200)
    click_button('Submit')
    expect(page).to have_content(6)
  end
end
