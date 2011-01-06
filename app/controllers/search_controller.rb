class SearchController < ApplicationController
  def index
    # Call out to indextank api
    client = IndexTank::Client.new(ENV['INDEXTANK_API_URL'] || 'http://:ru9qFNqdHsqIvt@z9m8.api.indextank.com')
    index = client.indexes('lulz')
    @results = index.search(params['q'])
    
    
  end
end
