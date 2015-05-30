module Helpers
  module OneHelper
    def hello
      Settings.hello
    end

    def views_path(path)
      env['api.tilt.template'] = "/v1/#{path}"
    end
  end
end