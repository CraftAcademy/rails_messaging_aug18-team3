Given("the following user is in database") do |table|
  table.hashes.each do |user|
    User.create(user)
  end
end

Then("I should see a message saying {string}") do |message|
  expect(page).to have_content message
end