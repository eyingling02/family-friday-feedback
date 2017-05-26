get '/' do
  erb :index
end

post '/' do
  if request.post?
    member_array = []
    # params[:members].each do |person|
    #   p person
    #   member = Member.new(name: person.name, email: person.email, team: person.team)
    #   member_array << member
    # end
    erb :index
  end
end

post '/response' do
  erb :response
end
