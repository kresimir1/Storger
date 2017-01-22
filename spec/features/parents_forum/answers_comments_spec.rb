require 'rails_helper'

feature 'Parents forum - user adds a comment to a topic discussion', %Q{
  As an authenticated user
  I want to have an option to go to the forum
  where I can discuss different topics with other users/parents
  } do
  #Acceptance CRITERIA
  # When I sign in, on my profile page I want to see the link for the parents forum
  # If I click on the link I get redirected to the page that all the topics
  # each topic title is a link to the topic details and all the comments/answers on the subject
  # I can add my comment to the topic discussion
  # I can delete my comment

  scenario 'User adds a comment to a topic' do
    user = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user, first_name: "Paul", last_name: "Harisson")
    topic = FactoryGirl.create(:question, user_id: user2.id)
    comment = FactoryGirl.create(:answer, user_id: user.id, question_id: topic.id)

    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Parents Forum'
    click_link topic.title

    fill_in 'Add a comment:', with: comment.body
    click_button 'Submit'

    expect(page).to have_content('Comment saved successfully.')
    expect(page).to have_content(user2.first_name)
    expect(page).to have_content(topic.title)
    expect(page).to have_content(topic.description)
    expect(page).to have_content(user.first_name)
    expect(page).to have_content(comment.body)

  end

  scenario 'User deletes his or hers comment' do
    user = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user, first_name: "Paul", last_name: "Harisson")
    topic = FactoryGirl.create(:question, user_id: user2.id)
    comment = FactoryGirl.create(:answer, user_id: user.id, question_id: topic.id)

    visit unauthenticated_root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    click_link 'Parents Forum'
    click_link topic.title
    click_link 'Delete'

    expect(page).to have_content("Comment deleted successfully")
    expect(page).to have_content(user2.first_name)
    expect(page).to have_content(topic.title)
    expect(page).to have_content(topic.description)
    expect(page).not_to have_content(user.first_name)
    expect(page).not_to have_content(comment.body)

  end
end
