require('sinatra')
require('sinatra/reloader')
require('./lib/prime')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/prime') do
  @prime = params.fetch('prime').prime()
  erb(:prime)
end
