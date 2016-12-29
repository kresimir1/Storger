require 'rails_helper'

feature 'immunization scheduler', %Q{
  As an authenticated user
  I want to have an option to create a schedule for suggested vaccines counting from
  my childs date of birth
  } do
  #Acceptance CRITERIA
  # When I sign in, on my profile page I want to see the link for the immunization schedule
  # If I click on the link I get redirected to the page that shows suggested
  # schedule for all the vaccines each of my children should take starting from their dob
  # information listed should be:
  # month and year when the vaccination should be performed
  # name of the vaccine
  # timeframe for the vaccination to be performed if there is one
  # each name of the vaccines should be a link to the page with the details about vaccine
  scenario 'User clicks on immunization scheduler link and is redirected to the page
  automtically created schedulers for all his children' do
    user = FactoryGirl.create(:user)
    child1 = FactoryGirl.create(:child, user_id: user.id)
    child2 = FactoryGirl.create(:child, first_name: 'Julia',dob: Date.parse('10/10/2016'),  user_id: user.id)
    vaccine1 = FactoryGirl.create(:vaccine)
    vaccine2 = FactoryGirl.create(:vaccine, title: "Polio (IPV)", timeframe: "6 to 18 months", month: 6)
    vaccine3 = FactoryGirl.create(:vaccine, title: "Meningococcal (MCV4)", timeframe: "11 to 12 years", year: 11)
    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Immunization Scheduler'

    expect(page).to have_content('Immunization Scheduler')
    expect(page).to have_content('Brian White')
    expect(page).to have_content('Date Of Birth: 2015-03-01')
    expect(page).to have_content('March 2015')
    expect(page).to have_content('Hepatitis B (Birth)')
    expect(page).to have_content('September 2015')
    expect(page).to have_content('Polio (IPV)')
    expect(page).to have_content('March 2026')
    expect(page).to have_content('Meningococcal (MCV4)')
  end

  scenario 'Each name of the vaccine on the schedule is a link to vaccine details' do
    user = FactoryGirl.create(:user)
    child = FactoryGirl.create(:child, user_id: user.id)
    vaccine = FactoryGirl.create(:vaccine)
    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Immunization Scheduler'
    click_link 'Hepatitis B'

    expect(page).to have_content(vaccine.title)
    expect(page).to have_content(vaccine.description)
  end 
end
