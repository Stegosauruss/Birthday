feature 'hello_world' do
  scenario 'visit homepage' do
    visit '/'
    expect(page).to have_content 'Hello, World!'
  end  
end
