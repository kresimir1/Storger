require 'rails_helper'

feature 'edit children details', %Q{
  As an authenticated user
  I want to be able to edit the information in my childs account
  } do
  #Acceptance CRITERIA
  #On the page with the child info I want to have the link to edit the basic
  # information

  scenario 'User successfully edits childs info' do
    user = FactoryGirl.create(:user)
    child1 = FactoryGirl.create(:child, user_id: user.id)
    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Children'
    click_link('Brian White')
    click_link('Edit')
    fill_in 'First Name', with: 'Rianna'
    page.choose('child_gender_female')
    click_button 'Submit Change'

    expect(page).to have_content('Storgie details')
    expect(page).to have_content('Rianna White')
    expect(page).to have_content('Date Of Birth: 2015-03-01')
    expect(page).to have_content('Gender: female')
  end
end
