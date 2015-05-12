module ApplicationHelper

  # not work!
  # def render_jbuilder(path)
  #   template = Tilt::JbuilderTemplate.new("#{settings.views}/#{path}")
  #   template.render
  # end

  def hello
    'hello helpers'
  end

  def hello_test
    'hello test'
  end

end