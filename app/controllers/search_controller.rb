class SearchController < ApplicationController
  def index
    # Call out to indextank api
    client = IndexTank::Client.new(ENV['INDEXTANK_API_URL'])
    index = client.indexes('idx')
    @results = index.search(params['q'], :start => params.fetch('start' , 1))
  end
end
