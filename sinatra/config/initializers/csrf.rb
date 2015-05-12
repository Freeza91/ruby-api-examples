MyApp.configure do |app|
  app.use Rack::ShowExceptions
  app.use Rack::Csrf, :raise => true

  # app.use Rack::Csrf
end