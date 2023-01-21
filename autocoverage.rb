require 'coverage'

Coverage.start(:all)

at_exit do
  pp Coverage.result
end
