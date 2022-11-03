class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/" do
      { project: "Book and book reviews!", motivation: "This is the way" }.to_json
    end

  end
  