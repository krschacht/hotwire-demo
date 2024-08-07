rails 7.2
ruby 3.3.4
rails new interview --database=postgresql --css=tailwind --skip-jbuilder --devcontainer
o configure database, websockets, queue
o rails generate CRUD views
o nest people routes
o broadcast updates
o style
o position turbo frames
o person turbo frames
o bin/rails generate draggable
o bin/rails generate dropzone


bundle
o database, websocket, queue
o Gemfile: redis, pry-rails, solid_queue
  o cable.yml postgresql
  o bin/rails generate solid_queue:install
  o queue_adapter: :solid_queue
  o worker: bin/rake solid_queue:start
bin/rails generate scaffold Position title:string
bin/rails generate scaffold Person position:references stage:string first_name:string last_name:string email:string note:text
bin/rails db:migrate
o Test scaffolding
  o root route to position#index
  o position has_many people
  o person:  enum :stage, %w[ applied interviewed declined hired ].index_by(&:to_sym)
  o fixtures stage
o Nesting routes
  o Nest people#index and people#new
  o new_person_path / url
  o people_path / url
o Update views
  o positions#index order(updated_at: :desc)
  o people#index order(:updated_at)

# update routes.rb for root

# nest people#index & new under positions

# Update views

# Wire up turbo-frames for positions
# Wire up turbo-frames for people

bin/rails generate stimulus draggable
bin/rails generate stimulus dropzone


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


Bugs:

* when creating positions/index and nav links target right_column with action=advance, back works except all the way back to the first state
* when creating positoins/index and elevating target & action to turbo-frame, the action doesn't elevate properly