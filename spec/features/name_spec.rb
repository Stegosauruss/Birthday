feature 'entering names' do
  scenario 'fill out names and go' do
    visit '/'
    fill_in 'name', with: 'Russell'
    fill_in 'date', with: "1987-01-03"
    click_button 'Go!'
    expect(page).to have_content("Russell")
  end
end