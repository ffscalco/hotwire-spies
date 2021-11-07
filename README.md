# README

This application accompanies the guide originally [published here](https://www.colby.so/posts/conditional-rendering-with-turbo-stream-broadcasts) which demonstrates a technique for retaining access to session variables like `current_user` or `Current.user` when broadcasting updates via a Turbo Stream ActionCable Channel.

The interesting part part of the code is the rendering of the `spy_frame` partial via an `after_create_commit` callback in the `Spy` model. The `spy_frame` renders a lazy loaded Turbo Frame that then retrieves the `spy` partial via a request to `spies#show`, allowing us to access the value of each subscribers `session[:clearance]` and to use that value to conditionally render content in the `spy` partial. The technique in this article isn't my invention - the original source for the idea came from a post on the Hotwire discussion forum, [found here](https://discuss.hotwired.dev/t/proposal-frame-reloads-through-streams/2209).

To run this code locally you'll need Ruby, Rails, and Yarn installed. Then, clone the repository, open the cloned repository in your terminal and then:

```shell
rails db:create db:migrate
rails s
```

I've installed the gem [Devise](https://github.com/heartcombo/devise) to use the `current_user` in the frames
