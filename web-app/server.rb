require 'sinatra'

# PATH - the 'local' part of the URL
# ROUTE - HTTP Verb + PATH

get '/' do
  redirect to('/hello')
end

get '/hello' do

  # Must be the very last line
  #send_file 'views/hello.erb'

  @current_time = Time.now

  @todo_list = [
    'Water the plants',
    'Feed the cat',
    'Call the girlfriend',
    'Go to the gym',
    'Buy groceries'
  ]

  erb :hello
end

get '/gallery' do

  erb :gallery
end

get '/about' do

  @list = [
    'I play guitar',
    'I develop softwares',
    'I work hard'
  ]

  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interest = ['cats', 'art', 'music', 'films', 'coffee']

  erb :about
end

get '/favourites' do
  @fav_links = ["http://www.facebook.com", "www.twitter.com", 'www.orkut.com', 'www.youtube.com']
  erb :favourites
end
