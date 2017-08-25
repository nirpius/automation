module Library
  module Pages
    class WikipediaHomePage < SitePrism::Page
      set_url "https://en.wikipedia.org/wiki/Main_Page"

      element :logo,          "a.mw-wiki-logo"
      element :search_field,  "input#searchInput"
      element :search_button, "input#searchButton.searchButton"

      def search_for(term)
        search_field.set(term)
        search_button.click
      end
    end
  end
end
