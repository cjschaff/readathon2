# Readathon2

This is a starter app for the Durango Ruby School in-class project.

## Requirements

* Postgresql

## Setup Instructions

1. Copy config/database.yml.example to config/database.yml
2. Update config/database.yml to work with your local machine
3. Create and migrate the database

    ```
    $ rake db:create db:migrate db:test:prepare
    ```

4. Run rake to make sure rspec runs successfully

    ```
    $ rake
    ```
    
## clearance instructions
                                                                                                                                                                          
2. Display user session and flashes. For example, in your application layout:                                                                                             
                                                                                                                                                                          
    <% if signed_in? %>                                                                                                                                                   
      Signed in as: <%= current_user.email %>                                                                                                                             
      <%= link_to 'Sign out', sign_out_path, :method => :delete %>                                                                                                        
    <% else %>                                                                                                                                                            
      <%= link_to 'Sign in', sign_in_path %>                                                                                                                              
    <% end %>                                                                                                                                                             
                                                                                                                                                                          
    <div id="flash">                                                                                                                                                      
      <% flash.each do |key, value| %>                                                                                                                                    
        <div class="flash <%= key %>"><%= value %></div>                                                                                                                  
      <% end %>                                                                                                                                                           
    </div>                         