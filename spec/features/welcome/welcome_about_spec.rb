require "rails_helper"

RSpec.feature "Welcome About Page", :type => :feature do
  let(:navbar_links) do
    %w[ V.E.T. Home Veteran\ Support V.E.T.\ Radio About Shop\ V.E.T.
    ]
  end

  it "Unauthenticated user visits about page" do
    visit welcome_about_path
    expect(page).to have_text(
      "Come discover Radio Devicion Today and see what's in store for you"
    )
  end
end