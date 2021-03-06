#ex 50

# require 'sinatra'
#
# set :port, 8080
# set :static, true
# set :public_folder, "static"
# set :views, "views"
#
# get '/' do
#     return 'Hello world'
# end
#
# get '/hello/' do
#     greeting = params[:greeting] || "Hi There"
#     erb :index, :locals => {'greeting' => greeting}
# end

#ex 51

require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

get '/' do
    return 'Hello world'
end

get '/hello/' do
    erb :hello_form
end

get '/form/' do
    erb :html_form
end

post '/hello/' do
    greeting = params[:greeting] || "Hi There"
    name = params[:name] || "Nobody"

    erb :index, :locals => {'greeting' => greeting, 'name' => name}
end
