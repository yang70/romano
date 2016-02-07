require 'rails_helper'

RSpec.feature "main page information" do
  scenario  "display the title on the page" do
    visit root_path

    expect(page).to have_content("Romano Capital")
  end
end
