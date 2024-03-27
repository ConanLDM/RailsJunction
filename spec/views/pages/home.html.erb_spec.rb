require "rails_helper"

RSpec.describe "pages/home" do
  it "displays the home page content" do
    render
    expect(rendered).to have_content("Homepage")
    expect(rendered).to have_content("Randomly Selected City")
  end
end
