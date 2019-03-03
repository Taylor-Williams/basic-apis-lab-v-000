class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    def foursquare
  Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
    req.params['client_id'] = client_id
    req.params['client_secret'] = client_secret
    req.params['v'] = '20160201'
    req.params['near'] = params[:zipcode]
    req.params['query'] = 'coffee shop'
  end
  render 'search'
end
    personal_access_token bdbe1da589733b45923b0f49bc8a9512cf3f07c3
  end
end
