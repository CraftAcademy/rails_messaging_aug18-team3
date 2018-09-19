Given("I should see my inbox") do
    expect(current_path).to eq mailbox_inbox_path
end

Given("I should be logged in as {string}") do |name|
  user = User.find_by(name: name)
  login_as user    
end

Then("I select {string} named {string}") do |field, recipient|
  select(recipient, from: field)
end


  