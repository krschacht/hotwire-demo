
rails 7.2
ruby 3.3.4

rails new interviewer . --database=postgresql --css=tailwind --skip-jbuilder --devcontainer
bundle
# configure actioncable & pry
bin/rails generate scaffold Position title:string
bin/rails generate scaffold Person position:references stage:string first_name:string last_name:string email:string note:text like_count:integer
bin/rails db:create
bin/rails db:migrate
# update routes.rb for root

# nest people#index & new under positions

# Update views

PWA configuration
Dockerfile configuration for dev containers (with headless system tests running)
Github CI workflow configuration
Brower version requirement (webp images, web push, badges, import maps, CSS nesting + :has)
Free static analysis of your code for security vulnerabilities

Advice:

Think more, write less
Try to do it the rails way, you'll get more benefit over time


Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36
Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36


Things to cover:
* full page update (Turbo drive)
* Replacing a frame
