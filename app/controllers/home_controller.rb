class HomeController < ApplicationController
  def connection
    require('logger')
    @connection = Faraday.new(
      url: 'https://newsapi.org/v2/',
    ) do |faraday|
      faraday.response(:logger, ::Logger.new($stdout), bodies: true)
    end
  end
  
  def index
    response = connection.get(
      'everything'
    ) do |req|
      req.headers['Content-Type'] = 'application/json'
      req.params = { 
        apiKey: '983ae5e979cd49258f0d9b577d7f5847',
        sortBy: 'publishedAt',
        from: '2022-07-07',
        q: 'boxing'
     }
    end
    @articles = JSON.parse(response.body, symbolize_names: true)[:articles]
  end
end
