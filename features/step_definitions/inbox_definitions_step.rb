Given("I navigate to the login page") do
    visit mailbox_inbox_path
  end
  
  When("I submit email and password") do 
    fill_in "Email", with: "anyone@example.com"
    fill_in "Password", with: "foobarbar" 
    click_on "Log in"
  end
  
  Then("I should be logged in") do
    expect(current_path).to eq mailbox_inbox_path
  end
  