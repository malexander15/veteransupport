require "rails_helper"

RSpec.feature "Welcome Index Page", :type => :feature do
  let(:navbar_links) do
    %w[ V.E.T. Home Veteran\ Entrepreneurship V.E.T.\ Radio About Shop\ V.E.T.
    ]
  end

  it "Unauthenticated user visits welcome page" do
    visit welcome_index_path
    expect(page).to have_selector(
      "h1", text: "Welcome to V.E.T."
    )
    # Placeholders
    ["1", "2", "3"].each do |placeholder_no|
      expect(page).to have_selector(
        "h1", "#{placeholder_no} of 3")
    end
  end

  it "has expected navbar elements" do
    visit welcome_index_path
    navbar_links.each do |link_text|
      expect(page).to have_link(link_text)
    end
  end
end