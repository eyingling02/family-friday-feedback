require 'pry'

get '/' do
  @first_member = Member.first
  erb :index
end

post '/' do
  if request.post?
    @member_array = []
# binding.pry
data = JSON.parse(request.body.read)
# p data[:members]

    data["members"].each do |person|
      member = Member.create(name: person["name"], email: person["email"], team: person["team"])
      member_array << member
    end
    p member_array
    erb :index
  end
end

post '/response' do
  erb :response
end
