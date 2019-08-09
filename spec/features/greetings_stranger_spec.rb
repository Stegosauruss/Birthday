feature 'greetings stranger' do
  scenario 'visit homepage' do
    visit '/'
    expect(page).to have_content 'Greetings Stranger!'
  end  
end
