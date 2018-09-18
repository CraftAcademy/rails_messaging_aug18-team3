Given("I am on the landing page") do
  visit root_path 
end

When("I click on the {string} button") do |link|
  click_on link
end

Then("I should goto the registration form") do
  visit new_user_registration_path
end

Then("I fill in {string} with {string}") do |field, name|
  fill_in(field, with: name)
end

Then("I should be on the landing page") do
  expect(current_path).to eq root_path
end

Then("I should be on the users registration page") do
  expect(current_path).to eq user_registration_path
end