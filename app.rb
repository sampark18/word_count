require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word') do
  @word = params.fetch('word').word_count()
  erb(:word)
end
