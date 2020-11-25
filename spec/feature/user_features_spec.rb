require_relative '../rails_helper'

RSpec.feature 'User Features', type: :feature do
  scenario 'when accessing the app' do
    user1 = User.create(fullname: 'Any Name 1', username: 'userx-1')
    user2 = User.create(fullname: 'Any Name 2', username: 'userx-2')
    
    visit root_path
    have_link 'Log in', href: login_path
    have_link 'Sign up', href: signup_path

    click_button 'Log in'
    expect(page.current_path).to eq '/'

    click_link 'Sign up'
    expect(page.current_path).to eq signup_path
    have_link 'Log in', href: login_path
    have_link 'Sign up', href: signup_path

    click_link 'Log in'
    expect(page.current_path).to eq root_path
    have_button 'Sign up', href: signup_path
    page.fill_in 'session_username', with: 'userx-1'

    click_button 'Log in'
    expect(page.current_path).to eq '/tastes'

    have_link 'Home', href: tastes_path
    have_link 'Profile', href: user_path(user1.id)
    have_link 'Edit', href: edit_user_path(user1.id)
    have_link 'Log out', href: logout_path
    have_link 'Taste it', href: tastes_path
    have_link 'User2', href: user_path(user2.id)

    click_on 'Log out'
    expect(page.current_path).to eq root_path
  end
end
