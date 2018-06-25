require 'rails_helper'

describe 'song/html' do
  
  # HW 2.1
  it 'displays table 3 row ' do
    visit 'song/html'
    
    expect(page).to have_selector('table tr', :count => 4)
  end

  # HW 2.2
  it 'check column' do
    visit 'song/html'
    
    expect(page).to have_selector("thead/tr/th[1]", text: "Name")
    expect(page).to have_selector("thead/tr/th[2]", text: "Band")
    expect(page).to have_selector("thead/tr/th[3]", text: "Album")
  end

end
