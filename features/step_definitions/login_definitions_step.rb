Given("the following user is in database") do |table|
  table.hashes.each do |user|    
    FactoryBot.create(:user, user)    
  end
end

When("I click the {string} button") do |button|
  click_on button
end

Then("I should be on the login form") do
  expect(current_path).to eq new_user_session_path
end

Then("I should see a message saying {string}") do |message|
  expect(page).to have_content message
end

Then("I should be on the new user session page") do
  expect(current_path).to eq new_user_session_path
end