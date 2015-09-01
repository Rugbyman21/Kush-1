ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default, :test)

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after(:each) do


    Client.all().each do |client|
      client.destroy()
    end


    Deliveryperson.all().each do |deliveryperson|
      deliveryperson.destroy()
    end


    Weed.all().each do |category|
      weed.destroy()
    end
  end
end
