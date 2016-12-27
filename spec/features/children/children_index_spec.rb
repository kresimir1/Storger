require 'rails_helper'

feature 'list children belonging to the user on the children index page', %Q{
  As an authenticated user
  I want to the link on my profile page
  That leads me to the list of children account that belong to me
  } do
  #Acceptance CRITERIA
  # When I sign in, on my profile page I want to see the 'children' link
  # If I click on the link I get redirected to the children index page
  # On the children index I should see the list of my children accounts
  # Each one should basic inforamtion shown (first and last name, dob, gender)

  scenario 'User signs in, clicks on the link and sees all his children
  information listed' do
    user = FactoryGirl.create(:user)
    child1 = FactoryGirl.create(:child, user_id: user.id)
    child2 = FactoryGirl.create(:child, first_name: 'Julia', dob: Date.parse('12/10/2013'), gender: 'female', user_id: user.id)
    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'

    expect(page).to have_link('Children')
    click_link 'Children'
    expect(page).to have_content('Brian White')
    expect(page).to have_content('Date Of Birth: 2015-03-01')
    expect(page).to have_content('Gender: male')
    expect(page).to have_content('Julia White')
    expect(page).to have_content('Date Of Birth: 2013-10-12')
    expect(page).to have_content('Gender: female')

  end
end
