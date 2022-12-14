require_relative "test_helper"

class TestController < Rulers::Controller
  def hello
    "Hello!"
  end
end

class TestApp < Rulers::Application
  def get_controller_and_action(env)
    [TestController, "index"]
  end
end

class RulersAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    puts "abema"
    get "/example/route"

    assert last_response.ok?
    
    assert last_response.body["Hello"]
  end
end