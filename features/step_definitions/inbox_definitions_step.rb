
Given("these emails exist") do |table|
  table.hashes.each do |conversation|
    sender = User.find_by(name: conversation[:sender])
    receiver = User.find_by(name: conversation[:receiver])
    sender.send_message(receiver, conversation[:body], conversation[:subject])        
  end
end

Given("I should see my inbox") do
  expect(current_path).to eq mailbox_inbox_path
end

Given("I should be logged in as {string}") do |name|
  @user = User.find_by(name: name)
  login_as @user    
end

Then("I select {string} named {string}") do |field, recipient|
  select recipient, from: field
end

Given("I select multiple {string} named {string} and {string}") do |field, recipient1, recipient2|
  select recipient1, from: field
  page.driver.browser.action.key_down(:shift).perform
  select recipient2, from: field  
end

Then("I should have a message in my inbox with the content {string}") do |message|
  expect(page).to have_content message
end

Then("I should have {string} new messages") do |expected_count|
  count = @user.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end


  