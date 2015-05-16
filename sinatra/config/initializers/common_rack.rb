MyApp.configure do |app|
  app.use Rack::FiberPool # must be used for fiber
  app.use Rack::ShowExceptions
  app.use Rack::Csrf, :raise => true

  # app.use Rack::Csrf
end