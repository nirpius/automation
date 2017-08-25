module Library
  class Application
    def initialize
      @pages = {}
    end

    def wikipedia_home
      @pages[:wikipedia_home] ||= Pages::WikipediaHomePage.new
    end
  end
end
