Given("I follow the password reset link") do
  path_regex = /(?:"https?\:\/\/.*?)(\/.*?)(?:")/ 
  email = ActionMailer::Base.deliveries.last
  path = email.body.match(path_regex)[1]
  visit(path)  
end