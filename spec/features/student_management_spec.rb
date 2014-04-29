require 'spec_helper'

feature 'Student management' do
  scenario 'A user can do the CRUD actions for students' do
    visit root_path
    click_link "Students"
    expect(page).to have_content "Students"
    
    click_link "Add Student"
    fill_in "Name", with: "Bill"
    select 'Mr. Renner' :from => 'Teacher'
    fill_in "Teacher", with: "Mr. Renner"
    click_button "Create Student"
    expect(page).to have_content "Created"
    
    expect(page).to have_content "Bill"    
    click_link "Edit"
    fill_in "Name", with: "Frank"
    click_button "Update Student"
    expect(page).to have_content "Updated"
    

    click_link "Delete"
    expect(page).to have_content "Destroyed"
    expect(page).to have_content "Students"
    
  end
  
  scenario 'A user sees all students in the system'do
    FactoryGirl.create_list :student, 4
    visit students_path
    expect(page).to have_css ".student", count: 4
  end
  
  

end