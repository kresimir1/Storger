require 'rails_helper'

feature 'user deletes child account', %Q{
  As an authenticated user
  I want to have an option to delete account for my child
  } do
  #Acceptance CRITERIA
  # On the child detail page I want to have a link to delete the account
  # When I click on the link  I should be redirected to the children index page

  scenario 'User successfully deletes a child account' do
    user = FactoryGirl.create(:user)
    child1 = FactoryGirl.create(:child, user_id: user.id)
    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Children'
    click_link 'Brian White'
    click_link 'Delete'

    expect(page).to have_content('Children:')
    expect(page).not_to have_content('Brian White')
    expect(page).not_to have_content('Date Of Birth: 2015-03-01')
    expect(page).not_to have_content('Gender: male')
  end
end
