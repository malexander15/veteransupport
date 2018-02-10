require "rails_helper"

RSpec.feature "Welcome Index Page", :type => :feature do
  scenario "Unauthenticated user visits welcome page" do
    visit welcome_index_path
    expect(page).to have_text(
      "Welcome#index Find me in app/views/welcome/index.html.erb"
    )
  end
end