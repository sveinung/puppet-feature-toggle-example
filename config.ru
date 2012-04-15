$: << 'app/routes'

require 'application'

map "/one" do
  run FeatureOne
end

map "/two" do
  run FeatureTwo
end

