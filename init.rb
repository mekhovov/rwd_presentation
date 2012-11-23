require 'rubygems'
require 'sinatra'
require 'haml'

set :public_folder, File.dirname(__FILE__)
set :haml, {:format => :html5, :attr_wrapper => '"'}

get '/' do
  File.read('index.html')
end

get '/demo' do
  File.read('demo.html')
end

get '/demo-1' do
  File.read('demo-1.html')
end

get '/demo-2' do
  File.read('demo-2.html')
end

get '/demo-3' do
  File.read('demo-3.html')
end

get '/qa' do
  haml :qa, :layout => :qa_layout
end

get '/:slide' do
  File.read('index.html')
end

