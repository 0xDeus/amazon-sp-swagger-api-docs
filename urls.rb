 #!/usr/bin/env ruby

require 'pathname'
require 'json'

urls = []
Dir.glob('data/**/*.json').each do|f|
  path = Pathname.new(f)
  model_name = path.to_s.split('/')[1]

  urls.push({
    url: "./#{path.to_s}", name: model_name
  })
end

puts JSON.dump(urls)
