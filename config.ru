$: << 'app/routes'

require 'sinatra'
require 'sinatra/config_file'

require 'application'

config_file '/etc/toggle_example'

if settings.one
  map "/one" do
    run FeatureOne
  end
end

if settings.two
  map "/two" do
    run FeatureTwo
  end
end
