require 'rails_helper'

feature 'show children age', %Q{
  As an authenticated user
  I want to have name of a child listed on the chidren index page
  and their age (from date of birth)
  } do
  #Acceptance CRITERIA
  #On their children index page user should have their age displayed
  #User should not have to enter the age - it should be calculated from their dob
  # and current date
  #If a child is under 1 year old it should be displayed in months
  #If a child is under 1 month old it should be displayed in weeks


  scenario 'On the children index page user sees their age displayed' do
    user = FactoryGirl.create(:user)
    child1 = FactoryGirl.create(:child, user_id: user.id)
    child2 = FactoryGirl.create(:child, first_name: 'Julia',dob: Date.parse('10/10/2016'),  user_id: user.id)
    child3 = FactoryGirl.create(:child, first_name: 'David',dob: Date.parse('12/12/2016'),  user_id: user.id)
    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Children'

    expect(page).to have_content('Brian White')
    expect(page).to have_content('Age: 1 yr.')
    expect(page).to have_content('Julia White')
    expect(page).to have_content('Age: 2 mth.')
    expect(page).to have_content('David White')
    expect(page).to have_content('Age: 2 wk.')
  end
end
