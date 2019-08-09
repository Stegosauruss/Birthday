feature 'happy birthday' do
  scenario 'user fills in date' do
    visit '/'
    fill_in 'name', with: 'Russell'
    fill_in 'date', with: "1987-01-03"
    click_button 'Go!'
    expect(page).to have_content("January 03, 1987")    
  end
  
  scenario 'it is their birthday' do
    visit '/'
    fill_in 'name', with: 'Russell'
    fill_in 'date', with: "2019-08-09"
    click_button 'Go!'
    expect(page).to have_content("Happy Birthday!")  
  end

  scenario 'birthday was yesterday' do
    visit '/'
    fill_in 'name', with: 'Russell'
    fill_in 'date', with: "2000-08-8"
    click_button 'Go!'
    expect(page).to have_content("Your birthday is in 365 day")  
  end

  scenario 'birthday is tomorrow' do
    visit '/'
    fill_in 'name', with: 'Russell'
    fill_in 'date', with: "1987-08-10"
    click_button 'Go!'
    expect(page).to have_content("Your birthday is in 1 day")  
  end
end
