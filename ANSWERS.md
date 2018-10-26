# Q0: Why are these two errors being thrown?
the pending migrations error occurs because our database schema is not up to date
the uninitialized constant error occurs because Pokemon has not been created yet
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
It is configured in home_controller.rb. They are all trainerless_pokemon.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button that when clicked, leads to the capture_path, passing the id as a parameter.
# Question 3: What would you name your own Pokemon?
Digimon
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
"/trainers/#{pokemon.trainer_id}" It needs the trainer id of the pokemon that was damaged
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
