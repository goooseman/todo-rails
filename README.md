# TODO-Rails

Make a simple TODO app on your web app with just two line of codes. It is really easy to share your tasks about your web app with other with this app.



## Installation

Add this line to your application's Gemfile:

```ruby

gem 'todo-rails'

```

And then execute:

    $ bundle

Run
``` ruby
 rake db:migrate
```

 Add
``` ruby
mount TodoRails::Engine => "/todos", as: 'todo'
```
to your ``` routes.rb ```.

 Create ``` config/todo-rails.yml ``` with the following:
``` ruby
title: 'TODO'
add_label: 'Add tasks'
remaining_label: '{{remaining()}} of {{todos.length}} remaining'
```
and open ``` http://localhost:3000/todos ```.
## TODO:
* Comments
* Archieve items
* The name of the person, whom this task belongs to
* Date and time
