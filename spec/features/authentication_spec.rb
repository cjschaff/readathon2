require 'spec_helper'

feature 'Authentication' do
  scenario "sign in" do
    #user create, 
    user = FactoryGirl.create(:user, email:"factorygirl@cjhosting.net", password:"password") #define user, 
   
    visit root_path#visit homepath,visit root_path#visit homepath, 
    
    click_link "Sign in"
    
    fill_in "Email", with: "factorygirl@cjhosting.net"#fill in email, 
    fill_in "Password", with: "password"#fill in a password, 
    click_button "Sign in" #submit
    expect(page).to have_content "Welcome" #expect a welcome message
    expect(page).to have_content "Sign out" #log out option
  end
end