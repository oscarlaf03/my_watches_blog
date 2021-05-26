# Welcome to my blog platform about watches

Welcome to my blog platform about watches, the main goal is to bring people together to share articles and insights about watches

## You can the hosted beta version through this public link
  https://my-watches-blog.herokuapp.com/

## Main features:
* Remote posts integration: separate index view that fetches news with keyword "watches" fom Gnews api
* Infinite scrolling on main index posts page
* User authentication via devise
* Logged in users can write a post with WYSIWYG edior and CRUD their own posts
* Authorization of user actions. Ie you cant edit or delete o post that is not your
* Views provide several interesting analytics such as number of visualizations and estimated reading time of a post
* Users have an unique @handle that serves as their identifier on the url 
* Users an upload theie onw "avatar" profile_picture, implemented with Active Storage
* User show page brings upp al the posts created by that user
* Posts pagination on main index post and in user show page
* Posts can have a cover image 
* Posts can have inline images uploaded seamlessly using the WYSIWYG editor
* Full moble responsiveness


### Runing local tests
Execute tests running `bundle exec rspec spec` 

### Stack
* Ruby on Rails
* Postgres
* Bootstrap
* Stimulus JS
