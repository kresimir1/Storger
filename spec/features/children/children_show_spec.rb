require 'rails_helper'

feature 'show children details', %Q{
  As an authenticated user
  I want to have name of a child listed on the chidren index page
  to be a link that takes me to the page that shows the details of my child account
  } do
  #Acceptance CRITERIA
  # When I sign in, on my profile page I want to see the 'children' link
  # If I click on the link I get redirected to the children index page
  # On the children index I should see the list of my children accounts
  # Each one should basic inforamtion shown (first and last name, dob, gender)

  scenario 'User clicks on the child name and is redirected to the page with child info' do
    user = FactoryGirl.create(:user)
    child1 = FactoryGirl.create(:child, user_id: user.id)
    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Children'
    expect(page).to have_link('Brian White')

    click_link 'Brian White'
    expect(page).to have_content('Storgie details')
    expect(page).to have_content('Brian White')
    expect(page).to have_content('Date Of Birth: 2015-03-01')
    expect(page).to have_content('Gender: male')
  end
end
