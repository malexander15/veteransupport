require "rails_helper"

RSpec.feature "Welcome Index Page", :type => :feature do
  let(:navbar_links) do
    %w[ V.E.T. Home Veteran\ Support V.E.T.\ Radio About Shop\ V.E.T.
    ]
  end

  it "Unauthenticated user visits welcome page" do
    visit welcome_index_path
    expect(page).to have_text(
      "Welcome#index Find me in app/views/welcome/index.html.erb"
    )
  end

  it "has expected navbar elements" do
    visit welcome_index_path
    navbar_links.each do |link_text|
      expect(page).to have_link(link_text)
    end
  end
end