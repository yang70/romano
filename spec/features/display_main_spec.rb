require 'rails_helper'

RSpec.feature "main page information" do
  scenario  "display the title on the page" do
    visit root_path

    expect(page).to have_content("Romano Capital")
    expect(page).to have_content("About")
    expect(page).to have_content("Projects")
    expect(page).to have_content("Let's Get In Touch!")
    expect(page).to have_content("123 Fake Street")
  end
  
  scenario  "display about section" do
    visit root_path

    expect(page).to have_content("About")
  end

  scenario  "display projects section" do
    visit root_path

    expect(page).to have_content("Projects")
  end

  scenario  "display contact section" do
    visit root_path

    expect(page).to have_content("Let's Get In Touch!")
  end

  scenario  "display footer" do
    visit root_path

    expect(page).to have_content("123 Fake Street")
  end
end
