module Library
  class Application
    def initialize
      @pages = {}
    end

    def wikipedia_home
      @pages[:wikipedia_home] ||= Pages::WikipediaHomePage.new
    end

    def wikipedia_test_automation
      @pages[:wikipedia_test_automation] ||= Pages::WikipediaTestAutomationPage.new
    end
  end
end
