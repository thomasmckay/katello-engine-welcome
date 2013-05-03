katello.org as an engine
========================

https://fedorahosted.org/katello/wiki/Plugins

1. Initialize an engine

   % rails plugin new welcome --full

2. Edit welcome.gemspec, replacing TODO items with correct info.

3. Create welcome.rb. This will be put in the katello install's bundler.d dir to automatically plugin the engine.

   gem 'welcome', :path => '/home/tomckay/code/katello-engine-welcome/welcome'

4. Create the controllers for the website

   % rails generate controller Home

   % vi config/routes.rb

         Rails.application.routes.draw do
           namespace 'welcome' do
             resources :home
           end
         end


   % vi app/controllers/home_controller.rb

         module Welcome
           class HomeController < ::ApplicationController
             def rules
               {
                 :index => lambda{true}
               }
             end

             def index
             end
           end
         end

5. Move the app/views/home to app/views/welcome/home to account for our module namespacing

   % vi app/views/home/index.html.haml

         %h1 Welcome!

6. Gemfile
         source "http://rubygems.org"

         gemspec

         # jquery-rails is used by the dummy application
         gem "jquery-rails"

         gem 'haml', '~> 3.1.2'
         gem 'haml-rails', "= 0.3.4"
         gem 'sass-rails'

7. Try the test server

   % cd test/dummy
   % rails s -p 3001

   http://localhost:3001/welcome/home

8. Build gem

   % gem build welcome.gemspec

9. Put welcome.rb in katello's bundler.d dir, bundle install, and restart katello

10. https://localhost/katello/welcome/home

