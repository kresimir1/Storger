require 'rails_helper'

feature 'add a child account to the parent profile', %Q{
  As an authenticated user
  I want to be able to a child account to my profile
  } do
  #Acceptance CRITERIA
  #When I click the 'Children' link on my profile page
  #I want to see an option to add a child to my profile
  #After I input child information it is added to my profile
  #(first_name, last_name, date of birth, gender)
  scenario 'Authanticated user successfully adds a child to his profile' do
    user = FactoryGirl.create(:user)
    child1 = FactoryGirl.create(:child, user_id: user.id)
    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Children'
    click_link('Add a Storgie')
    fill_in 'First Name', with: child1.first_name
    fill_in 'Last Name', with: child1.last_name
    fill_in 'Date Of Birth', with: child1.dob

    page.choose('child_gender_male')

    click_button 'Add Storgie'
    expect(page).to have_content('Successfully added account.')
    expect(page).to have_content('Brian White')
    expect(page).to have_content('Date Of Birth: 2015-03-01')
    expect(page).to have_content('Gender: male')
  end

  scenario 'User does not provide valid information' do
    user = FactoryGirl.create(:user)
    child1 = FactoryGirl.create(:child, user_id: user.id)
    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Children'
    click_link('Add a Storgie')

    click_button 'Add Storgie'
    expect(page).to have_content('4 errors prohibited this account from being saved:')
    expect(page).to have_content("First name can't be blank")
    expect(page).to have_content("Last name can't be blank")
    expect(page).to have_content("Dob can't be blank")
    expect(page).to have_content("Gender can't be blank")

  end
end
