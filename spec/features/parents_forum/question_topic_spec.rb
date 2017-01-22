require 'rails_helper'

feature 'Parents forum - user adds a question', %Q{
  As an authenticated user
  I want to have an option to go to the forum
  where I can discuss different topics with other parents
  } do
  #Acceptance CRITERIA
  # When I sign in, on my profile page I want to see the link for the parents forum
  # If I click on the link I get redirected to the page that all the past topics
  # it also has a link to add a new topic / question
  # each topic has listed the title, creator(and time when it was created) and description
  # each title is a link to the topic details and all the comments/answers on the subject
  # on the topic detail page I can delete or edit a topic if I created it or am admin

  scenario 'User adds new topic sucessfully and sees topic details' do
    user = FactoryGirl.create(:user)

    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Parents Forum'
    click_link 'New Topic'

    fill_in 'Title', with: "Test title"
    fill_in 'Description', with: "Test description about some topic"
    click_button 'Submit'

    expect(page).to have_content('Successfully added a new topic')
    expect(page).to have_content(user.first_name)
    expect(page).to have_content('Test title')
    expect(page).to have_content('Test description about some topic')

  end

  scenario 'User provides invalid information when trying to add a new topic' do
    user = FactoryGirl.create(:user)

    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Parents Forum'
    click_link 'New Topic'

    fill_in 'Title', with: "Test"
    click_button 'Submit'

    expect(page).to have_content('2 errors prohibited this topic from being saved:')
    expect(page).to have_content('Title is too short (minimum is 6 characters)')
    expect(page).to have_content("Description can't be blank")
  end

  scenario 'Each topic title is a link to the topic details and comments' do
    user = FactoryGirl.create(:user)
    topic = FactoryGirl.create(:question, user_id: user.id)
    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Parents Forum'

    expect(page).to have_content(user.first_name)
    expect(page).to have_content(topic.title)
    expect(page).to have_content(topic.description)

    click_link topic.title

    expect(page).to have_content(user.first_name)
    expect(page).to have_content(topic.title)
    expect(page).to have_content(topic.description)
  end

  scenario 'User edits the topic' do
    user = FactoryGirl.create(:user)
    topic = FactoryGirl.create(:question, user_id: user.id)
    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Parents Forum'

    expect(page).to have_content(user.first_name)
    expect(page).to have_content(topic.title)
    expect(page).to have_content(topic.description)

    click_link topic.title
    click_link "Edit"
    fill_in 'Title', with: "Test edited title"
    fill_in 'Description', with: "Test edited description about some topic"
    click_button 'Submit'

    expect(page).to have_content('Successfully edited a topic')
    expect(page).to have_content(user.first_name)
    expect(page).to have_content('Test edited title')
    expect(page).to have_content('Test edited description about some topic')

  end

  scenario 'User deletes the topic' do
    user = FactoryGirl.create(:user)
    topic = FactoryGirl.create(:question, user_id: user.id)
    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Parents Forum'

    expect(page).to have_content(user.first_name)
    expect(page).to have_content(topic.title)
    expect(page).to have_content(topic.description)

    click_link topic.title
    click_link "Delete"

    expect(page).to have_content('Successfully deleted the topic')
    expect(page).not_to have_content(user.first_name)
    expect(page).not_to have_content(topic.title)
    expect(page).not_to have_content(topic.description)

  end
end
