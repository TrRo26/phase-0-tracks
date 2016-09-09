# require gems
require 'sinatra'
require "sinatra/reloader" if development?
require 'sqlite3'


set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true
review_db = SQLite3::Database.new("reviews.db")
review_db.results_as_hash = true


# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")  
  erb :home
end

get '/results' do
	@reviews = review_db.execute("SELECT * FROM reviews")
	erb :student_reviews
end

get '/students/new' do
  erb :new_student
end



get '/students/review_form' do
	erb :review_form
end

post '/students/reviews' do
	
 	review_db.execute("INSERT INTO reviews (name, comment) VALUES (?, ?)",[params['name'], params['comment']])
  	redirect '/results'
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end



# add static resources