Given("I am on the landing page") do
  visit root_path 
end

When("I click on the {string} button") do |string|
  click_on "Sign up"
end

Then("I fill in {string} with {string}") do |name, user_name|
  fill_in(name, with: "Bob")
end

When("I click {string}") do |string|
  click_on "Create"
end

Then("I should be on the landing page") do
  visit root_path
end