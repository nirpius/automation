module Library
  module Pages
    class WikipediaTestAutomationPage < SitePrism::Page
      set_url "https://en.wikipedia.org/wiki/Test_automation"

      element :page_title, "h1.firstHeading.firstHeading"
    end
  end
end
