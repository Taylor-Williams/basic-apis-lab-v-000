class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = Iv1.7d3ec104ca1b1d78
      req.params['client_secret'] = b312059fc109dbfb2487d57e47c07a5ac2f81809
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
