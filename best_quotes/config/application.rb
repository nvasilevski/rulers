$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")
require "rulers"

module BestQuotes
  class Application < Rulers::Application
  end
end