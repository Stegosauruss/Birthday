feature 'entering names' do
  scenario 'fill out names and go' do
    visit '/'
    fill_in 'name', with: 'Russell'
    click_button 'Go!'
    expect(page).to have_content("Russell")
  end
end