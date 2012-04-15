require 'sinatra/base'

class FeatureOne < Sinatra::Base
  set :views, Proc.new { File.join(root, "../", "views") }

  get '/' do
    haml :feature_one
  end
end

class FeatureTwo < Sinatra::Base
  set :views, Proc.new { File.join(root, "../", "views") }

  get '/' do
    haml :feature_two
  end
end

