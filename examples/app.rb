require 'sinatra/base'
require 'sinatra/soap'

class App < Sinatra::Base
  register Sinatra::Soap
  post '/' do
    puts env['sinatra.soap_action'].inspect
    puts env['sinatra.soap_body'].inspect
  end

  get '/' do
    puts env.inspect
  end
  # soap :test, args: {reader: :integer},
  #             return: nil,
  #             namespace: "anyother" do
  #   puts "1"
  # end
end
App.run!