require 'rails_helper'

feature 'sign up', %Q{
  As an unathenticated user
  I want to sign up
  so that I can use other features of the application
  } do
# ACCEPTANCE CRITERIA
# I must specify a valid email adress
# I must specify a password, and confirm that password
# If I do not perform the above, I get an error message
# If I specify valid information, I register my account and am authanticated

  scenario 'specifying valid and required information' do
    visit unauthenticated_root_path
    fill_in 'First Name', with: 'John'
    fill_in 'Last Name', with: 'White'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'user_password', with: 'password'
    fill_in 'Password Confirmation', with: 'password'
    click_button 'Sign Up'

    expect(page).to have_content("Welcome")
    expect(page).to have_content("You have signed up successfully.")
    expect(page).to have_content("Sign Out")
  end

  scenario 'required information is not supplied' do
      visit  unauthenticated_root_path
      fill_in 'First Name', with: ''
      fill_in 'Last Name', with: ''
      fill_in 'Email', with: 'example.com'
      fill_in 'user_password', with: 'password'
      fill_in 'Password Confirmation', with: 'password'
      click_button 'Sign Up'
      expect(page).to have_content("First Namecan't be blank")
      expect(page).to have_content("Last Namecan't be blank")
      expect(page).to have_content("Emailis invalid")


    end

    scenario 'password confiramtion does not match password' do
      visit  unauthenticated_root_path
      fill_in 'First Name', with: 'Goran'
      fill_in 'Last Name', with: 'Rukavina'
      fill_in 'Email', with: 'user@example.com'
      fill_in 'user_password', with: 'password'
      fill_in 'Password Confirmation', with: 'different_password'
      click_button 'Sign Up'
      expect(page).to have_content("Password Confirmationdoesn't match Password")

    end

end
