Given("I navigate to the login page") do
    visit mailbox_inbox_path
end

Given("I should be logged in as {string}") do |name|
  user = User.find_by(name: name)
  login_as user    
end

  
Then("I should be logged in") do
  expect(current_path).to eq root_path
end
  