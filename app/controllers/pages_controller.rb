class PagesController < ApplicationController
  def home
  end
end

def create_post
  conn = Faraday.new(url: 'http://localhost:3001')

  response = conn.post do |req|
    req.url '/posts'
    req.headers['Content-Type'] = 'application/json'
    req.body = {
      post: {
        title: params[:title],
        views: 0
      }
    }.to_json
  end

  JSON.parse(response.body)
  redirect_to root_path, notice: 'Post created'
end
